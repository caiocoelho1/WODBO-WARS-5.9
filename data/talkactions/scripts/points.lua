function onSay(cid, words, param, channel)
	local getP = getPoints(cid)
	doPlayerPopupFYI(cid, "You have ".. getP .." P points.")
	return true
end