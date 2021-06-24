# Walk through TF-IDF with julia TextAnalysis module
# by manually construcing a toy example.
using TextAnalysis
s1 = "Four score and seven years ago."
d1 = StringDocument(s1)
s2 = "Not seven, but seven times seven I say."
d2 = StringDocument(s2)
c = Corpus([d1,d2])
update_inverse_index!(c)
update_lexicon!(c)

# Index, by term, of what documents the term appears in:
term2docs = inverse_index(c)
lex = lexicon(c)
docterm = DocumentTermMatrix(c)
tfidf = tf_idf(docterm)

#=
doc1row = dtv(c[1],lexicon(c))
doc2row = dtv(c[2],lexicon(c))



println(doc1row)
println(doc2row)
println(lex.keys)
=#

# Find index of term within docterm matrix.
function revidx(trm, docterm)
    findfirst(t -> t == trm, docterm.terms)
end



function reportidf(term)
    termidx = revidx(term, docterm)
    for i in 1:length(c.documents)
        println(term," in document ",i, " has tf-idf ", tfidf[i, termidx])
    end
end

term = "ago"
termidx = revidx(term,docterm)


termidx
reportidf(term)

tfidf[2,5]

