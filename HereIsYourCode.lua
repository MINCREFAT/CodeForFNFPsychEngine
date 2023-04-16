--COOL

function onUpdate(elapsed)
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(curBpm/60)
        if not middleScroll then
            setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 - 320);
            setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 - 320);
            setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 - 320);
            setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3 - 320);
    
            setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
            setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
            setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
            setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
        end
    
    --Player Notes

    noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 40*math.sin((currentBeat+4*0.1)*math.pi), 0.25)
    noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 40*math.sin((currentBeat+5*0.1)*math.pi), 0.25)
    noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 40*math.sin((currentBeat+6*0.1)*math.pi), 0.25)
    noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 40*math.sin((currentBeat+7*0.1)*math.pi), 0.25)
    
    --Opponent Notes
    
    noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + 40*math.sin((currentBeat+0*0.1)*math.pi), 0.25)
    noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + 40*math.sin((currentBeat+1*0.1)*math.pi), 0.25)
    noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + 40*math.sin((currentBeat+2*0.1)*math.pi), 0.25)
    noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + 40*math.sin((currentBeat+3*0.1)*math.pi), 0.25)
end
