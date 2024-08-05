# https://leetcode.com/problems/ransom-note/

# Test cases:
# ransomNote = "a", magazine = "b"
# ransomNote = "aa", magazine = "ab"
# ransomNote = "aa", magazine = "aab"
# ransomNote = "ea", magazine = "abcdef"

# Expected results:
# false
# false
# true
# true

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}

# Dictionary solution
def can_construct(ransom_note, magazine)
  magazine = magazine.chars.tally
  ransom_note = ransom_note.chars.tally

  ransom_note.all? do |k, v|
    return false unless magazine[k]

    magazine[k] >= v
  end
end

# Array of chars exclusion solution
def can_construct(ransom_note, magazine)
  magazine = magazine.chars
  ransom_note = ransom_note.chars

  ransom_note.all? do |element|
    index = magazine.index(element)

    magazine.delete_at(index) if index
  end
end

# Chars count solution
def can_construct(ransom_note, magazine)
  ransom_note.chars.uniq.all? do |character|
    ransom_note.count(character) <= magazine.count(character)
  end
end
