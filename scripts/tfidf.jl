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
keylist = keys(invidx)  |>  collect


println(doc1row)
println(doc2row)
println(keylist)
println(c[2].text)
keylist |> length

function reportidf(term)
    termidx = findfirst(isequal(term), keylist)
    keylist[termidx]
    for i in 1:length(c.documents)
        println(term," in document ",i, " has tf-idf ", tfidf[i, termidx])
    end
end

term = "seven"
reportidf(term)

tfidf[2,5]