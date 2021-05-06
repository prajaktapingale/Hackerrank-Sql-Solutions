declare @var int=1
while @var <=20
begin
    print replicate(' *', @var)
    set @var = @var + 1
end
