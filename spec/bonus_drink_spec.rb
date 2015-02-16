require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  # to
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
  # not_to
  specify { expect(BonusDrink.total_count_for(15)).not_to eq 0 }
  specify { expect(BonusDrink.total_count_for(21)).not_to eq 1 }
  specify { expect(BonusDrink.total_count_for(23)).not_to eq 4 }
  specify { expect(BonusDrink.total_count_for(311)).not_to eq 16 }
  specify { expect(BonusDrink.total_count_for(4100)).not_to eq 149 }
end