-- Filter function called on each RawBlock element.
function RawBlock (el)
  if el.text:match '\\landscape' then
    local pagebreak = '<w:p><w:pPr><w:sectPr><w:pgSz w:w="15840" w:h="12240" w:orient="landscape"/></w:sectPr></w:pPr></w:p>'
    return pandoc.RawBlock('openxml', pagebreak)
  elseif el.text:match '\\portrait' then
    local pagebreak = '<w:p><w:pPr><w:sectPr><w:pgSz w:w="12240" w:h="15840"/></w:sectPr></w:pPr></w:p>'
    return pandoc.RawBlock('openxml', pagebreak)
  elseif el.text:match '\\pagebreak' then
    local pagebreak = '<w:p><w:r><w:br w:type="page"/></w:r></w:p>'
    return pandoc.RawBlock('openxml', pagebreak)
  end
  -- otherwise, leave the block unchanged
  return nil
end
