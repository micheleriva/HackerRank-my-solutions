# 01 Matching Specific String
regex_pattern = 'hackerrank'

# 02 Matching Anything But a Newline
regex_pattern = '^...\....\....\....$'

# 03 Matching Digits & Non-Digit Characters
regex_pattern = '\d{2}\D{1}\d{2}\D{1}\d{4}'

# 04 Matching Whitespace & Non-Whitespace Character
regex_pattern = '\S{2}\s{1}\S{2}\s{1}\S{2}'

# 05 Matching Word & Non-Word Character
regex_pattern = '\w{3}\W{1}\w{10}\W{1}\w{3}'

# 06 Matching Start & End
regex_pattern = '^\d{1}\w{4}\.$'

# 07 Matching Specific Characters
regex_pattern = '^[123][120][xs0][30Aa][xsu][\.,]$'

# 08 Excluding Specific Characters
regex_pattern = '^[^\d][^aeiou][^bcDF][^\s\r\t\n\f][^AEIOU][^\.\,]$'

# 09 Matching Character Ranges
regex_pattern = '^[a-z][1-9][^a-z][^A-Z][A-Z]'

# 10 Matching {x} Repetitions
regex_pattern = '^[a-zA-Z02468]{40}[13579\s]{5}$'