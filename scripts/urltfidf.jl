using Base: String
using TextAnalysis
using HTTP
using CitableCorpus
using CiteEXchange

xlation = "https://raw.githubusercontent.com/homermultitext/hmt-archive/master/archive/translations/book_ten_due_ebbott.cex"

str = HTTP.get(xlation).body |> String
blks = blocks(str)
txt = datafortype("ctsdata", blks)
c = CitableCorpus.fromdelimited(CitableTextCorpus, join(txt, "\n"))
txtcorp = map(cn -> cn.text, c.corpus[2:4])

docs = map(s -> StringDocument(s), txtcorp)
corp = Corpus(docs)
update_inverse_index!(corp)
update_lexicon!(corp)
lex = 	lexicon(corp) 
lexkeys = keys(lex) |> collect
m = DocumentTermMatrix(corp)
tfidf = tf_idf(m)


function reverseidx(trm, ks)   
    idx = nothing
    #findfirst(isequal(trm), ks)
    for i in 1:length(ks)
        if isassigned(ks,i)
            if ks[i] == trm
                idx = i
                println("FOUND $i")
            end
        end
    end
    idx
end

function show(trm,corp)
    lexkeys = keys(lex) |> collect
    trmidx = reverseidx(trm, lexkeys)
    println("Term index of $trm is $trmidx" )
    println("Lexical frequencys is $(lexical_frequency(corp,trm))")
    println("Within doc 1, tfidf is $(tfidf[1,trmidx])")
end


trmidx = reverseidx("sleep", lexkeys)

show("ships", corp)



function reportidf(term, corp)
    
    termidx = findfirst(isequal(term), lex.keys)

    for i in 1:length(corp.documents)
        println(term," in document ",i, " has tf-idf ", tfidf[i, termidx])
    end
end

reportidf("ships", corp)


onerow = dtv(corp[1], lex)