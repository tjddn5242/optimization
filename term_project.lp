\ Model mining
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  10 totalYield[0] + 9.09090909090909 totalYield[1]
   + 8.264462809917354 totalYield[2] + 7.513148009015777 totalYield[3]
   + 6.830134553650707 totalYield[4] - 5e+06 open[0,0] - 4e+06 open[0,1]
   - 4e+06 open[0,2] - 5e+06 open[0,3] - 4.5454545454545449e+06 open[1,0]
   - 3.6363636363636362e+06 open[1,1] - 3.6363636363636362e+06 open[1,2]
   - 4.5454545454545449e+06 open[1,3] - 4.1322314049586775e+06 open[2,0]
   - 3.3057851239669416e+06 open[2,1] - 3.3057851239669416e+06 open[2,2]
   - 4.1322314049586775e+06 open[2,3] - 3.7565740045078881e+06 open[3,0]
   - 3.0052592036063108e+06 open[3,1] - 3.0052592036063108e+06 open[3,2]
   - 3.7565740045078881e+06 open[3,3] - 3.415067276825353e+06 open[4,0]
   - 2.7320538214602824e+06 open[4,1] - 2.7320538214602824e+06 open[4,2]
   - 3.415067276825353e+06 open[4,3]
Subject To
 WorkingLimit[0]: working[0,0] + working[0,1] + working[0,2] + working[0,3]
   <= 3
 WorkingLimit[1]: working[1,0] + working[1,1] + working[1,2] + working[1,3]
   <= 3
 WorkingLimit[2]: working[2,0] + working[2,1] + working[2,2] + working[2,3]
   <= 3
 WorkingLimit[3]: working[3,0] + working[3,1] + working[3,2] + working[3,3]
   <= 3
 WorkingLimit[4]: working[4,0] + working[4,1] + working[4,2] + working[4,3]
   <= 3
 QualityRequired[0]: yield[0,0] + 0.7 yield[0,1] + 1.5 yield[0,2]
   + 0.5 yield[0,3] - 0.9 totalYield[0] >= 0
 QualityRequired[1]: yield[1,0] + 0.7 yield[1,1] + 1.5 yield[1,2]
   + 0.5 yield[1,3] - 0.8 totalYield[1] >= 0
 QualityRequired[2]: yield[2,0] + 0.7 yield[2,1] + 1.5 yield[2,2]
   + 0.5 yield[2,3] - 1.2 totalYield[2] >= 0
 QualityRequired[3]: yield[3,0] + 0.7 yield[3,1] + 1.5 yield[3,2]
   + 0.5 yield[3,3] - 0.6 totalYield[3] >= 0
 QualityRequired[4]: yield[4,0] + 0.7 yield[4,1] + 1.5 yield[4,2]
   + 0.5 yield[4,3] - totalYield[4] >= 0
 MaximumYield[0,0]: yield[0,0] - 2e+06 working[0,0] <= 0
 MaximumYield[0,1]: yield[0,1] - 2.5e+06 working[0,1] <= 0
 MaximumYield[0,2]: yield[0,2] - 1.3e+06 working[0,2] <= 0
 MaximumYield[0,3]: yield[0,3] - 3e+06 working[0,3] <= 0
 MaximumYield[1,0]: yield[1,0] - 2e+06 working[1,0] <= 0
 MaximumYield[1,1]: yield[1,1] - 2.5e+06 working[1,1] <= 0
 MaximumYield[1,2]: yield[1,2] - 1.3e+06 working[1,2] <= 0
 MaximumYield[1,3]: yield[1,3] - 3e+06 working[1,3] <= 0
 MaximumYield[2,0]: yield[2,0] - 2e+06 working[2,0] <= 0
 MaximumYield[2,1]: yield[2,1] - 2.5e+06 working[2,1] <= 0
 MaximumYield[2,2]: yield[2,2] - 1.3e+06 working[2,2] <= 0
 MaximumYield[2,3]: yield[2,3] - 3e+06 working[2,3] <= 0
 MaximumYield[3,0]: yield[3,0] - 2e+06 working[3,0] <= 0
 MaximumYield[3,1]: yield[3,1] - 2.5e+06 working[3,1] <= 0
 MaximumYield[3,2]: yield[3,2] - 1.3e+06 working[3,2] <= 0
 MaximumYield[3,3]: yield[3,3] - 3e+06 working[3,3] <= 0
 MaximumYield[4,0]: yield[4,0] - 2e+06 working[4,0] <= 0
 MaximumYield[4,1]: yield[4,1] - 2.5e+06 working[4,1] <= 0
 MaximumYield[4,2]: yield[4,2] - 1.3e+06 working[4,2] <= 0
 MaximumYield[4,3]: yield[4,3] - 3e+06 working[4,3] <= 0
 WorkingInOpen[0,0]: working[0,0] - open[0,0] <= 0
 WorkingInOpen[0,1]: working[0,1] - open[0,1] <= 0
 WorkingInOpen[0,2]: working[0,2] - open[0,2] <= 0
 WorkingInOpen[0,3]: working[0,3] - open[0,3] <= 0
 WorkingInOpen[1,0]: working[1,0] - open[1,0] <= 0
 WorkingInOpen[1,1]: working[1,1] - open[1,1] <= 0
 WorkingInOpen[1,2]: working[1,2] - open[1,2] <= 0
 WorkingInOpen[1,3]: working[1,3] - open[1,3] <= 0
 WorkingInOpen[2,0]: working[2,0] - open[2,0] <= 0
 WorkingInOpen[2,1]: working[2,1] - open[2,1] <= 0
 WorkingInOpen[2,2]: working[2,2] - open[2,2] <= 0
 WorkingInOpen[2,3]: working[2,3] - open[2,3] <= 0
 WorkingInOpen[3,0]: working[3,0] - open[3,0] <= 0
 WorkingInOpen[3,1]: working[3,1] - open[3,1] <= 0
 WorkingInOpen[3,2]: working[3,2] - open[3,2] <= 0
 WorkingInOpen[3,3]: working[3,3] - open[3,3] <= 0
 WorkingInOpen[4,0]: working[4,0] - open[4,0] <= 0
 WorkingInOpen[4,1]: working[4,1] - open[4,1] <= 0
 WorkingInOpen[4,2]: working[4,2] - open[4,2] <= 0
 WorkingInOpen[4,3]: working[4,3] - open[4,3] <= 0
 OpenCondition1[0,0]: - openVariable[0,0] + openVariable[1,0] >= 0
 OpenCondition1[0,1]: - openVariable[1,0] + openVariable[2,0] >= 0
 OpenCondition1[0,2]: - openVariable[2,0] + openVariable[3,0] >= 0
 OpenCondition1[0,3]: - openVariable[3,0] + openVariable[4,0] >= 0
 OpenCondition1[1,0]: - openVariable[0,1] + openVariable[1,1] >= 0
 OpenCondition1[1,1]: - openVariable[1,1] + openVariable[2,1] >= 0
 OpenCondition1[1,2]: - openVariable[2,1] + openVariable[3,1] >= 0
 OpenCondition1[1,3]: - openVariable[3,1] + openVariable[4,1] >= 0
 OpenCondition1[2,0]: - openVariable[0,2] + openVariable[1,2] >= 0
 OpenCondition1[2,1]: - openVariable[1,2] + openVariable[2,2] >= 0
 OpenCondition1[2,2]: - openVariable[2,2] + openVariable[3,2] >= 0
 OpenCondition1[2,3]: - openVariable[3,2] + openVariable[4,2] >= 0
 OpenCondition1[3,0]: - openVariable[0,3] + openVariable[1,3] >= 0
 OpenCondition1[3,1]: - openVariable[1,3] + openVariable[2,3] >= 0
 OpenCondition1[3,2]: - openVariable[2,3] + openVariable[3,3] >= 0
 OpenCondition1[3,3]: - openVariable[3,3] + openVariable[4,3] >= 0
 OpenCondition2[0,0]: - closeVariable[0,0] + closeVariable[1,0] >= 0
 OpenCondition2[0,1]: - closeVariable[1,0] + closeVariable[2,0] >= 0
 OpenCondition2[0,2]: - closeVariable[2,0] + closeVariable[3,0] >= 0
 OpenCondition2[0,3]: - closeVariable[3,0] + closeVariable[4,0] >= 0
 OpenCondition2[1,0]: - closeVariable[0,1] + closeVariable[1,1] >= 0
 OpenCondition2[1,1]: - closeVariable[1,1] + closeVariable[2,1] >= 0
 OpenCondition2[1,2]: - closeVariable[2,1] + closeVariable[3,1] >= 0
 OpenCondition2[1,3]: - closeVariable[3,1] + closeVariable[4,1] >= 0
 OpenCondition2[2,0]: - closeVariable[0,2] + closeVariable[1,2] >= 0
 OpenCondition2[2,1]: - closeVariable[1,2] + closeVariable[2,2] >= 0
 OpenCondition2[2,2]: - closeVariable[2,2] + closeVariable[3,2] >= 0
 OpenCondition2[2,3]: - closeVariable[3,2] + closeVariable[4,2] >= 0
 OpenCondition2[3,0]: - closeVariable[0,3] + closeVariable[1,3] >= 0
 OpenCondition2[3,1]: - closeVariable[1,3] + closeVariable[2,3] >= 0
 OpenCondition2[3,2]: - closeVariable[2,3] + closeVariable[3,3] >= 0
 OpenCondition2[3,3]: - closeVariable[3,3] + closeVariable[4,3] >= 0
 OpenCondition3[0,0]: openVariable[0,0] - closeVariable[0,0] >= 0
 OpenCondition3[0,1]: openVariable[1,0] - closeVariable[1,0] >= 0
 OpenCondition3[0,2]: openVariable[2,0] - closeVariable[2,0] >= 0
 OpenCondition3[0,3]: openVariable[3,0] - closeVariable[3,0] >= 0
 OpenCondition3[0,4]: openVariable[4,0] - closeVariable[4,0] >= 0
 OpenCondition3[1,0]: openVariable[0,1] - closeVariable[0,1] >= 0
 OpenCondition3[1,1]: openVariable[1,1] - closeVariable[1,1] >= 0
 OpenCondition3[1,2]: openVariable[2,1] - closeVariable[2,1] >= 0
 OpenCondition3[1,3]: openVariable[3,1] - closeVariable[3,1] >= 0
 OpenCondition3[1,4]: openVariable[4,1] - closeVariable[4,1] >= 0
 OpenCondition3[2,0]: openVariable[0,2] - closeVariable[0,2] >= 0
 OpenCondition3[2,1]: openVariable[1,2] - closeVariable[1,2] >= 0
 OpenCondition3[2,2]: openVariable[2,2] - closeVariable[2,2] >= 0
 OpenCondition3[2,3]: openVariable[3,2] - closeVariable[3,2] >= 0
 OpenCondition3[2,4]: openVariable[4,2] - closeVariable[4,2] >= 0
 OpenCondition3[3,0]: openVariable[0,3] - closeVariable[0,3] >= 0
 OpenCondition3[3,1]: openVariable[1,3] - closeVariable[1,3] >= 0
 OpenCondition3[3,2]: openVariable[2,3] - closeVariable[2,3] >= 0
 OpenCondition3[3,3]: openVariable[3,3] - closeVariable[3,3] >= 0
 OpenCondition3[3,4]: openVariable[4,3] - closeVariable[4,3] >= 0
 OpenCondition4[0,0]: openVariable[0,0] - closeVariable[0,0] - open[0,0]
   = 0
 OpenCondition4[0,1]: openVariable[1,0] - closeVariable[1,0] - open[1,0]
   = 0
 OpenCondition4[0,2]: openVariable[2,0] - closeVariable[2,0] - open[2,0]
   = 0
 OpenCondition4[0,3]: openVariable[3,0] - closeVariable[3,0] - open[3,0]
   = 0
 OpenCondition4[0,4]: openVariable[4,0] - closeVariable[4,0] - open[4,0]
   = 0
 OpenCondition4[1,0]: openVariable[0,1] - closeVariable[0,1] - open[0,1]
   = 0
 OpenCondition4[1,1]: openVariable[1,1] - closeVariable[1,1] - open[1,1]
   = 0
 OpenCondition4[1,2]: openVariable[2,1] - closeVariable[2,1] - open[2,1]
   = 0
 OpenCondition4[1,3]: openVariable[3,1] - closeVariable[3,1] - open[3,1]
   = 0
 OpenCondition4[1,4]: openVariable[4,1] - closeVariable[4,1] - open[4,1]
   = 0
 OpenCondition4[2,0]: openVariable[0,2] - closeVariable[0,2] - open[0,2]
   = 0
 OpenCondition4[2,1]: openVariable[1,2] - closeVariable[1,2] - open[1,2]
   = 0
 OpenCondition4[2,2]: openVariable[2,2] - closeVariable[2,2] - open[2,2]
   = 0
 OpenCondition4[2,3]: openVariable[3,2] - closeVariable[3,2] - open[3,2]
   = 0
 OpenCondition4[2,4]: openVariable[4,2] - closeVariable[4,2] - open[4,2]
   = 0
 OpenCondition4[3,0]: openVariable[0,3] - closeVariable[0,3] - open[0,3]
   = 0
 OpenCondition4[3,1]: openVariable[1,3] - closeVariable[1,3] - open[1,3]
   = 0
 OpenCondition4[3,2]: openVariable[2,3] - closeVariable[2,3] - open[2,3]
   = 0
 OpenCondition4[3,3]: openVariable[3,3] - closeVariable[3,3] - open[3,3]
   = 0
 OpenCondition4[3,4]: openVariable[4,3] - closeVariable[4,3] - open[4,3]
   = 0
 TotalYield[0]: yield[0,0] + yield[0,1] + yield[0,2] + yield[0,3]
   - totalYield[0] = 0
 TotalYield[1]: yield[1,0] + yield[1,1] + yield[1,2] + yield[1,3]
   - totalYield[1] = 0
 TotalYield[2]: yield[2,0] + yield[2,1] + yield[2,2] + yield[2,3]
   - totalYield[2] = 0
 TotalYield[3]: yield[3,0] + yield[3,1] + yield[3,2] + yield[3,3]
   - totalYield[3] = 0
 TotalYield[4]: yield[4,0] + yield[4,1] + yield[4,2] + yield[4,3]
   - totalYield[4] = 0
Bounds
Binaries
 working[0,0] working[0,1] working[0,2] working[0,3] working[1,0]
 working[1,1] working[1,2] working[1,3] working[2,0] working[2,1]
 working[2,2] working[2,3] working[3,0] working[3,1] working[3,2]
 working[3,3] working[4,0] working[4,1] working[4,2] working[4,3]
 openVariable[0,0] openVariable[0,1] openVariable[0,2] openVariable[0,3]
 openVariable[1,0] openVariable[1,1] openVariable[1,2] openVariable[1,3]
 openVariable[2,0] openVariable[2,1] openVariable[2,2] openVariable[2,3]
 openVariable[3,0] openVariable[3,1] openVariable[3,2] openVariable[3,3]
 openVariable[4,0] openVariable[4,1] openVariable[4,2] openVariable[4,3]
 closeVariable[0,0] closeVariable[0,1] closeVariable[0,2]
 closeVariable[0,3] closeVariable[1,0] closeVariable[1,1]
 closeVariable[1,2] closeVariable[1,3] closeVariable[2,0]
 closeVariable[2,1] closeVariable[2,2] closeVariable[2,3]
 closeVariable[3,0] closeVariable[3,1] closeVariable[3,2]
 closeVariable[3,3] closeVariable[4,0] closeVariable[4,1]
 closeVariable[4,2] closeVariable[4,3] open[0,0] open[0,1] open[0,2]
 open[0,3] open[1,0] open[1,1] open[1,2] open[1,3] open[2,0] open[2,1]
 open[2,2] open[2,3] open[3,0] open[3,1] open[3,2] open[3,3] open[4,0]
 open[4,1] open[4,2] open[4,3]
End
