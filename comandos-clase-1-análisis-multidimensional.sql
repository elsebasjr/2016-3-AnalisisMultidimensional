select 'hello world';

select 'hello world' as HelloWorld;

select SUBSTRING('Hello world', 3, 5) 
as SubstringExample;

declare @myString as varchar(20) = 'hello world';
declare @myString2 as varchar(20);
set @myString2 = 'Another Hello World';
select @myString = 'Select Hello world';

select @myString, @myString2;


select concat ('Hello', ' ', 'wo', 'rld') as HelloWorld;

select ROUND(1748.58, -3) as RoundExample;

declare @redondeoGacho as decimal(5,2) = 748.58;
declare @redondeoVolando as decimal(7,2) = 748.58;
/*
select ROUND(@redondeoGacho, -3) as RoundExample;
*/
select ROUND(@redondeoVolando, -4) as RoundExample;

select 7134 + 74;
select 734 * 968;
select 783478.0 / 782;

-- operaciones sobre bits
declare @valor as int = 12358405 -- Resultado = 12374789;
declare @bitParaEncender as int = 14;

select @valor | (power(2, @bitParaEncender)) as BitEncendido;

-- operaciones sobre bits
declare @valorParaApagar as int = 12374789 -- Resultado = 12358405 ;
declare @bitParaApagar as int = 14;

select @valorParaApagar & (~power(2, @bitParaApagar)) as BitApagado;


select GETDATE ( );
select DATEPART(hour, getdate()) as DateHour;
select DATEPART(MILLISECOND, getdate()) as DateHour;


SELECT DATENAME(year, getdate())  
    ,DATENAME(month, getdate())  
    ,DATENAME(day, getdate())  
    ,DATENAME(dayofyear, getdate())  
    ,DATENAME(weekday, getdate());  

SELECT DATEDIFF(hour, '2016-05-18', '2013-09-28') as DateDifference;

select DATEADD(week, +3, getdate()) as DateAddExample;