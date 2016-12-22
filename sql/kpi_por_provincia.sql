USE nokia;

SELECT 
	DTIME,
    PROVINCE,
	sum(`2G_NORMATTS`) AS G_NORMATTS,
    sum(`2G_DROPPED`) AS G_DROPPED,
    sum(`2G_DROPPED`) / sum(`2G_NORMATTS`) AS G_DCR,
    sum(`2G_NORMSEIZ_NC`) AS G_NORMSEIZ_NC,
    sum(`2G_NORMATTS`) - sum(`2G_NORMSEIZ`) AS G_NC,
    sum(`2G_T_CONGESTION`) AS G_T_CONGESTION,
    sum(`2G_SD_BLOCKS`) AS G_SD_BLOCKS,
    sum(`2G_SD_PPCAID`) AS G_SD_PPCAID,
    sum(`2G_OBSCFL`) AS G_OBSCFL,
    sum(`2G_OMSCFL`) AS G_OMSCFL,
    sum(`2G_FAIL_DLTBF`) AS G_FAIL_DLTBF
FROM gsm_nokia_report
GROUP BY DTIME, PROVINCE
ORDER BY PROVINCE, DTIME;