# something_is_truthy ? do_this() : else_this()

is_it_rainy? ? stay_home : go_party

friends_are_also_coming? ? go_party : stay_home

if friends_are_also_coming? && !is_it_raining
  go_party
else
  stay_home
end

friends_are_also_coming? && !is_it_raining ? go_party : stay_home
