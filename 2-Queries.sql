Use Concerts

Select * FROM Shows
Where band = 'coldplay'

Select * FROM Shows
Where city = 'london'

Select * FROM Shows
Where Venue = 'O2'

Select band, starttime, venue FROM Shows
Where s_id = 1

Select price FROM Tickets
Where s_id = 1

select c.* from customers c, shows s, tickets t
where c.t_id = t.t_id
and t.s_id = s.s_id
and s.s_id = 1 