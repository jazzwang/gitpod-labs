val toc = spark.read.json("data/2023-03-27_humana_toc.json.gz")
toc.printSchema
val toc_sorted = toc.select(explode($"aaData").as("toc")).select($"toc.size",$"toc.name").orderBy($"size".desc)
println(s"Total count = " + toc_sorted.count)
val samples = toc_sorted.sample(0.001)
println(s"sample count = " + samples.count)
samples.write.json("sample-toc")
