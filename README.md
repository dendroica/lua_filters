# lua_filters

This is to change page orientations within a document, using RMarkdown to knit to Word (docx). Put the "orient.lua" file in the same directory as your RMarkdown file, and specify this in the header.

```
title: "Test Doc"
author: "Jessica Gorzo"
date: "August 16, 2019"
output:
  word_document:
    pandoc_args:
     '--lua-filter=orient.lua'
geometry: margin=0.5in
```
Your document will initialize in portrait, so you need to add a portrait tag (\portrait) where you want your landscape section to begin. You add the landscape tag (\landscape) where the landscape section will end.
