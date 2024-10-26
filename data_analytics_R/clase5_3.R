install.packages('lubridate')
library(lubridate)

#para trabajar con fechas 
today()
now()

ymd('2023-01-31')
ymd(20220720)
mdy('january 31st, 2020')
dmy('31-may-2020')

#crear fecha desde string

ymd_hms(20200914092500, tz='Asia/Tokyo')
#saber las zonas horarias
OlsonNames()

#manipular zona horaria
my_date <- now()
my_date
with_tz(my_date, tz='Europe/Berlin')
my_date2 <- force_tz(my_date, tz='Asia/Tokyo')
my_date2
my_date-my_date2

#crear fechas y horas
library(nycflights13)
head(flights)
flights %>% 
    select(year, month, day, hour, minute)%>%
    mutate(departure = make_datetime(year, month, day, hour, minute)) #crear nueva col departure

#cambiar formato 
as_datetime(today())
today()
as_date(now())

#obtener componentes de una fecha
my_date <- ymd_hms('2018-09-11 12:37:26')
my_date
year(my_date)
month(my_date)
day(my_date)
wday(my_date, label = TRUE)
wday(my_date, label = TRUE, abbr = FALSE, week_start = 1)

#redondear fecha 
round_date(my_date, unit = 'hour')
round_date(my_date, unit= 'day')
round_date(my_date, unit= 'month')
ceiling_date(my_date, unit= 'month')
floor_date(my_date, unit = 'year')

#fijar fecha y hora
year(my_date) <-2020
month(my_date) <- 11 #mes en numero entero
hour(my_date) <- 17
my_date

#update para cambiar todo de una
my_date <- update(my_date, year =2023,  month = 9, mday=20)
my_date

#duraciones: se calcula en segundos 
as.duration(today()-ymd(19891109))
dseconds(15)
dseconds(60)
dminutes(30)
dhours(20)
ddays(1:7)

#manipular duraciones 
today()
today() + ddays(1)
today() - dmonths(1)

#periodos 
seconds(20)
minutes(30)
hours(8)

#Manipular periodos
6*(months(2) + days(20))

#comparar periodo y duracion
ymd(20200101) + dyears(1) #de duracion, tiene en cuenta tiempo absoluto en segundos
#era bisiesto
ymd(20200101) + years(1) 

#intervalos 
interval1 <- interval (start = ymd(20230101), end = today())
int_start(interval1)
int_end (interval1)
int_length(interval1)
ymd(20230701) %within% interval1
ymd(20220702) %within% interval1

