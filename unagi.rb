seats_and_groups = gets.split(/\s/)
# 座席数とグループ数の2つの数字の入力を受け付ける。
empty_seat = [*1..(seats_and_groups[0].to_i)]
# 上で取得した最初の数字(全体の座席数)を配列を作る。
seats_count = empty_seat.count
# 上で取得した数字を変数に代入する。
number_of_visitors = seats_and_groups[1].to_i
# グループの数を変数に代入。
[*1..number_of_visitors].each do
#　入店してくるグループの数を繰り返す。
used_seats = gets.split(/\s/)
# グループの人数と座り始めの番号の2つの数字の入力を受け付ける。
users = used_seats[0].to_i
# used_seatsで取得した最初の数字をusers変数に代入。
seating_number = used_seats[1].to_i
# used_seatsで取得したを二番目の数字を変数に代入。
fill_last_number = ((seating_number + users) - 1)
# グループの人数と座り始めの番号から1を引いて変数に代入。
if fill_last_number > seats_count
# 
fill_last_number = fill_last_number - seats_count
     
next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]
    else

next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
    end
  
if next_seat_candidate.count == next_seat_candidate.uniq.count

if ((seating_number + users) - 1) > seats_count

empty_seat = empty_seat - [*1..fill_last_number]

empty_seat = empty_seat - [*seating_number..seats_count]
    else

empty_seat = empty_seat - [*seating_number..fill_last_number]
      end
    end
  end

  puts seats_count - empty_seat.count