-- encoding: UTF-8

_CHAR_DIAGRAM = {
  ["smh"] = {"《","》",},
  ["yh"] = {"「","」","『","』",},
  ["kh"] = {"〖","〗","【","】",},
  ["wc"] = {"±",},
  ["cy"] = {"×","÷",},
  ["xs"] = {"∧","↑",},
  ["xx"] = {"∨","↓",},
  ["xz"] = {"←",},
  ["xy"] = {"→",},
  ["fx"] = {"←","→","↑","↓",},
  ["hj"] = {"∑",},
  ["y"] = {"∩",},
  ["h"] = {"∪",},
  ["dg"] = {"√",},
  ["jd"] = {"∠",},
  ["yq"] = {"⊙","○","●","◎",},
  ["jf"] = {"∫","∮",},
  ["hdy"] = {"≡",},
  ["ydy"] = {"≌","≈","∽",},
  ["wq"] = {"∞","∝",},
  ["bxd"] = {"≠",},
  ["bxy"] = {"≮","≥",},
  ["dydy"] = {"≥","≮",},
  ["bdy"] = {"≯","≤",},
  ["xydy"] = {"≤","≯",},
  ["yw"] = {"∵",},
  ["sy"] = {"∴",},
  ["xb"] = {"♂","♀",},
  ["nan"] = {"♂",},
  ["nv"] = {"♀",},
  ["ss"] = {"℃",},
  ["my"] = {"＄",},
  ["oy"] = {"￠",},
  ["fl"] = {"￡",},
  ["rmb"] = {"￥",},
  ["hb"] = {"＄","￠","￡","￥",},
  ["qf"] = {"‰",},
  ["no"] = {"№",},
  ["wjx"] = {"☆","★",},
  ["lx"] = {"◇","◆",},
  ["fk"] = {"□","■",},
  ["sj"] = {"△","▲",},
  ["xh"] = {"※",},

}

-- unkown: ∏,∈,∷,⊥,∥,⌒,¤,§,〓

function GetChar(input)
  if #input <= 0 then
    return {}
  else
    local metatables = {}
    for k, v in pairs(_CHAR_DIAGRAM) do
      if string.sub(k,1,string.len(input))==input then
        for k1, v1 in pairs(v) do
          table.insert(metatables, v1)
        end
      end
    end
    return metatables
  end
  error("Should never reach here")
end

------------
ime.register_command("fh", "GetChar", "输入符号", "digit", "输入符号名，例如 wjx : ★")


