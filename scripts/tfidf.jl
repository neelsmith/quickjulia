using TextAnalysis
s1 = "Four score and seven years ago."
d1 = StringDocument(s1)
s2 = "Not seven, but seven times seven I say."
d2 = StringDocument(s2)
c = Corpus([d1,d2])
update_inverse_index!(c)
update_lexicon!(c)


invidx = inverse_index(c)
m = DocumentTermMatrix(c)
tfidf = tf_idf(m)

doc1row = dtv(c[1],lexicon(c))
doc2row = dtv(c[2],lexicon(c))



println(doc1row)
println(doc2row)
println(keylist)
println(c[2].text)
keylist |> length

function reverseidx(trm, ks)   
    idx = nothing
    #findfirst(isequal(trm), ks)
    for i in 1:length(ks)
        if isassigned(ks,i)
            if ks[i] == trm
                idx = i
                println("FOUND TERM KEY $i")
            end
        end
    end
    idx
end


function reportidf(term)
    #termidx = findfirst(isequal(term), keylist)
    termidx = reverseidx(term,lex.keys)
    keylist[termidx]
    for i in 1:length(c.documents)
        println(term," in document ",i, " has tf-idf ", tfidf[i, termidx])
    end
end

term = "seven"
termidx = reverseidx(term,lex.keys)


termidx
reportidf(term)

tfidf[2,5]

