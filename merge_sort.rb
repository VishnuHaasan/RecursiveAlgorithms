def merge(arr,l,m,r)
  n1 = m-l+1
  n2 = r-m 
  l1 = Array.new
  r1 = Array.new
  for i in 0..n1-1 do 
    l1.push(arr[i+l])
  end
  for j in 0..n2-1 do 
    r1.push(arr[m+1+j])
  end
  i = 0
  j = 0
  k = l 
  while i<n1 && j<n2 do 
    if l1[i]>r1[j]
      arr[k] = r1[j]
      j+=1
      k+=1
    else
      arr[k] = l1[i]
      i+=1
      k+=1 
    end
  end
  while i<n1 do
    arr[k] = l1[i]
    i+=1
    k+=1
  end
  while j<n2 do 
    arr[k] = r1[j]
    j+=1
    k+=1
  end
end

def merge_sort(arr,l,r)
  return if l>=r 
  m = ((l+r)/2).to_i
  merge_sort(arr,l,m)
  merge_sort(arr,m+1,r)
  merge(arr,l,m,r)
end

arr = [9,8,7,6,5]
p arr
merge_sort(arr,0,arr.length-1)
p arr