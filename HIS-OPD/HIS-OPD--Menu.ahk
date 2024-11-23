HISOPDMenu := Menu()

HISOPDMenu.Add("&F - 初診", FirstVisit)
HISOPDMenu.Add("&K - Refill (Keep)", StableConditionAskedForRefill)

HISOPDMenu.Add()

HISOPDMenu.Add("&S - 支持性心理治療", Supportive)
HISOPDMenu.Add("&R - 特殊心理治療", Reeducative)
HISOPDMenu.Add("&I - 深度心理治療", Intensive)

HISOPDMenu.Add()

HISOPDMenu.Add("&P - PPFE", PPFE)

HISOPDMenu.Add()

HISOPDMenu.Add("&O - Social Function", SocialFunctionAssess)

HISOPDMenu.Add()

HISOPDMenu.Add("&E - EMR Edit", EMREdit)
