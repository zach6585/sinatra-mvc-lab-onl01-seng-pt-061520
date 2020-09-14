
class PigLatinizer
  def piglatinize(words) 
    al = words.split(' ')
    bc = []
    vs = ['a','e','i','o','u','A','E','I','O','U', 'y','Y']
    i = 1
    al.each do |a| 
      if vs.include?(a[0]) && a[0] != 'y' && a[0] != 'Y'
      bc << a + "way" 
      else 
        while !vs.include?(a[i])
          i += 1 
        end 
        bc << a[(i)...] + "#{a[0..i-1]}ay" 
      end 
    end 
    words = bc.join(" ")
    words
  end
end 