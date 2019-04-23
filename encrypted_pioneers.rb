names = <<HEREDOC
Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unyog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Wbua Ngnanfbss
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
HEREDOC

arr_of_names = names.split("\n")

def rot13(text)
  text.split('').map do |char|
    if char =~ /[a-z]/
      low_case(char)
    elsif char =~ /[A-Z]/
      up_case(char)
    else
      char
    end
  end.join
end

def low_case(char)
  new_ord = char.ord + 13
  new_ord = (new_ord % 122) + 96 if new_ord > 122
  new_ord.chr
end

def up_case(char)
  new_ord = char.ord + 13
  new_ord = (new_ord % 90) + 64 if new_ord > 90
  new_ord.chr
end

arr_of_names.each do |encrypted_name|
  puts rot13(encrypted_name)
end
