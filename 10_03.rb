# coding: utf-8

def log descriptionOfBlock, &block
  if $nesting_depth.nil?
    $nesting_depth = 0
  else
    $nesting_depth += 1
  end
  puts "  " * $nesting_depth << '開始 "' << descriptionOfBlock << '"...'
  puts "  " * $nesting_depth << '..."' << descriptionOfBlock << '" 終了, 返り値は:  ' << block.call.to_s
  $nesting_depth -= 1
end

log "外ブロック" do
  log "ある小さなブロック" do
    log "ちっちゃなブロック" do
      "lots of love"
    end
    42
  end
  log "もうひとつのブロック" do
    "I love Indian food!"
  end
  true
end
