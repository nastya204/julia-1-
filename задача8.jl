#Проверяет модет ли робот двинуться в этом направлении.Если да, то робот двигается и возращается true,иначе возращается false
function try_move!(robot,direct)
    if !isborder(robot,direct)
        move!(robot,direct)
        return true
    end 
end 
#двигает робота на заданное количество шагов
#С помощью функиции try_move.На вход получает параметр max_num_steps, который отвечается а количество шагов,которые должен сдлеать робот
function along!(robot,side,max_num_steps)
    num_steps = 0
    while num_steps < max_num_steps && try_move!(robot,side)
        num_steps+=1
        if ismarker(robot)
            return 1
        end 
    end 
    return 0 
end 




#Главная функциябкоторая двигает робота по спиралипока не встретил стену,с началом в заданную сторону параметра side.
#Переменная n отвечает за то, какое количество шагов должен сдлеать робот в каждую сторону, а следом поворачивать почасовой стрелке
#После каждого поаорота num увеличивается на 1, когда num становится 2, то мы увеличиваем количетсво шагов n на 1.
function start!(robot)
    side = Nord 
    n = 1
    stop = 1
    while !isborder(robot,side)
        num = 0
        while num!= 2
            stop = along!(robot,side,n)
            if stop==0
                num +=1
                side=inverse(side)
            else
                return
            end
        end
        n+=1
    end 
end 


function inverse(side)
    if side == Nord 
        return Ost
    elseif side == Ost
        return Sud
    elseif side == Sud 
        return West
    elseif side == West
        return  Ost
    end 
end 