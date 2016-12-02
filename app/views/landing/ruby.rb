def mergestrings(a, b)
  i = 0
  output = ""
  while i < a.length && i < b.length
    output += a[i]
    output += b[i]
    i += 1
  end
  while i < a.length
    output += a[i]
    i += 1
  end
  while i < b.length
    output += b[i]
    i += 1
  end
   output
end

puts mergestrings "abc", "def"
