class GameSystem < ApplicationRecord
  has_many :characters
  has_many :items
  has_many :campaings
  serialize :templates, Hash

  DICES = {
    d3: 'D3',
    d4: 'D4',
    d5: 'D5',
    d6: 'D6',
    d7: 'D7',
    d8: 'D8',
    d10: 'D10',
    d12: 'D12',
    d14: 'D14',
    d16: 'D16',
    d18: 'D18',
    d20: 'D20',
    d24: 'D24',
    d30: 'D30',
    d34: 'D34',
    d48: 'D48',
    d50: 'D50',
    d60: 'D60',
    d100: 'D100',
    d120: 'D120'
	}
end
