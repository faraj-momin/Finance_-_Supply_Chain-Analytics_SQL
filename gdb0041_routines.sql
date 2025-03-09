-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gdb0041
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `net_sales`
--

DROP TABLE IF EXISTS `net_sales`;
/*!50001 DROP VIEW IF EXISTS `net_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `net_sales` AS SELECT 
 1 AS `date`,
 1 AS `fiscal_year`,
 1 AS `customer_code`,
 1 AS `market`,
 1 AS `product_code`,
 1 AS `product`,
 1 AS `variant`,
 1 AS `sold_quantity`,
 1 AS `gross_price_total`,
 1 AS `pre_invoice_discount_pct`,
 1 AS `net_invoice_sales`,
 1 AS `post_invoice_discount_pct`,
 1 AS `net_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gross_sales`
--

DROP TABLE IF EXISTS `gross_sales`;
/*!50001 DROP VIEW IF EXISTS `gross_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gross_sales` AS SELECT 
 1 AS `date`,
 1 AS `fiscal_year`,
 1 AS `customer_code`,
 1 AS `customer`,
 1 AS `market`,
 1 AS `product_code`,
 1 AS `product`,
 1 AS `variant`,
 1 AS `sold_quantity`,
 1 AS `gross_price_per_item`,
 1 AS `gross_price_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_preinv_discount`
--

DROP TABLE IF EXISTS `sales_preinv_discount`;
/*!50001 DROP VIEW IF EXISTS `sales_preinv_discount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_preinv_discount` AS SELECT 
 1 AS `date`,
 1 AS `fiscal_year`,
 1 AS `customer_code`,
 1 AS `market`,
 1 AS `product_code`,
 1 AS `product`,
 1 AS `variant`,
 1 AS `sold_quantity`,
 1 AS `gross_price_per_item`,
 1 AS `gross_price_total`,
 1 AS `pre_invoice_discount_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_postinv_discount`
--

DROP TABLE IF EXISTS `sales_postinv_discount`;
/*!50001 DROP VIEW IF EXISTS `sales_postinv_discount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_postinv_discount` AS SELECT 
 1 AS `date`,
 1 AS `fiscal_year`,
 1 AS `customer_code`,
 1 AS `market`,
 1 AS `product_code`,
 1 AS `product`,
 1 AS `variant`,
 1 AS `sold_quantity`,
 1 AS `gross_price_total`,
 1 AS `pre_invoice_discount_pct`,
 1 AS `net_invoice_sales`,
 1 AS `post_invoice_discount_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `net_sales`
--

/*!50001 DROP VIEW IF EXISTS `net_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `net_sales` AS select `sales_postinv_discount`.`date` AS `date`,`sales_postinv_discount`.`fiscal_year` AS `fiscal_year`,`sales_postinv_discount`.`customer_code` AS `customer_code`,`sales_postinv_discount`.`market` AS `market`,`sales_postinv_discount`.`product_code` AS `product_code`,`sales_postinv_discount`.`product` AS `product`,`sales_postinv_discount`.`variant` AS `variant`,`sales_postinv_discount`.`sold_quantity` AS `sold_quantity`,`sales_postinv_discount`.`gross_price_total` AS `gross_price_total`,`sales_postinv_discount`.`pre_invoice_discount_pct` AS `pre_invoice_discount_pct`,`sales_postinv_discount`.`net_invoice_sales` AS `net_invoice_sales`,`sales_postinv_discount`.`post_invoice_discount_pct` AS `post_invoice_discount_pct`,(`sales_postinv_discount`.`net_invoice_sales` * (1 - `sales_postinv_discount`.`post_invoice_discount_pct`)) AS `net_sales` from `sales_postinv_discount` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gross_sales`
--

/*!50001 DROP VIEW IF EXISTS `gross_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gross_sales` AS select `s`.`date` AS `date`,`s`.`fiscal_year` AS `fiscal_year`,`s`.`customer_code` AS `customer_code`,`c`.`customer` AS `customer`,`c`.`market` AS `market`,`s`.`product_code` AS `product_code`,`p`.`product` AS `product`,`p`.`variant` AS `variant`,`s`.`sold_quantity` AS `sold_quantity`,`g`.`gross_price` AS `gross_price_per_item`,round((`s`.`sold_quantity` * `g`.`gross_price`),2) AS `gross_price_total` from (((`fact_sales_monthly` `s` join `dim_product` `p` on((`s`.`product_code` = `p`.`product_code`))) join `dim_customer` `c` on((`s`.`customer_code` = `c`.`customer_code`))) join `fact_gross_price` `g` on(((`g`.`fiscal_year` = `s`.`fiscal_year`) and (`g`.`product_code` = `s`.`product_code`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_preinv_discount`
--

/*!50001 DROP VIEW IF EXISTS `sales_preinv_discount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_preinv_discount` AS select `s`.`date` AS `date`,`s`.`fiscal_year` AS `fiscal_year`,`s`.`customer_code` AS `customer_code`,`c`.`market` AS `market`,`s`.`product_code` AS `product_code`,`p`.`product` AS `product`,`p`.`variant` AS `variant`,`s`.`sold_quantity` AS `sold_quantity`,`g`.`gross_price` AS `gross_price_per_item`,round((`s`.`sold_quantity` * `g`.`gross_price`),2) AS `gross_price_total`,`pre`.`pre_invoice_discount_pct` AS `pre_invoice_discount_pct` from ((((`fact_sales_monthly` `s` join `dim_customer` `c` on((`s`.`customer_code` = `c`.`customer_code`))) join `dim_product` `p` on((`s`.`product_code` = `p`.`product_code`))) join `fact_gross_price` `g` on(((`g`.`fiscal_year` = `s`.`fiscal_year`) and (`g`.`product_code` = `s`.`product_code`)))) join `fact_pre_invoice_deductions` `pre` on(((`pre`.`customer_code` = `s`.`customer_code`) and (`pre`.`fiscal_year` = `s`.`fiscal_year`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_postinv_discount`
--

/*!50001 DROP VIEW IF EXISTS `sales_postinv_discount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_postinv_discount` AS select `s`.`date` AS `date`,`s`.`fiscal_year` AS `fiscal_year`,`s`.`customer_code` AS `customer_code`,`s`.`market` AS `market`,`s`.`product_code` AS `product_code`,`s`.`product` AS `product`,`s`.`variant` AS `variant`,`s`.`sold_quantity` AS `sold_quantity`,`s`.`gross_price_total` AS `gross_price_total`,`s`.`pre_invoice_discount_pct` AS `pre_invoice_discount_pct`,(`s`.`gross_price_total` - (`s`.`pre_invoice_discount_pct` * `s`.`gross_price_total`)) AS `net_invoice_sales`,(`po`.`discounts_pct` + `po`.`other_deductions_pct`) AS `post_invoice_discount_pct` from (`sales_preinv_discount` `s` join `fact_post_invoice_deductions` `po` on(((`po`.`customer_code` = `s`.`customer_code`) and (`po`.`product_code` = `s`.`product_code`) and (`po`.`date` = `s`.`date`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'gdb0041'
--
/*!50003 DROP FUNCTION IF EXISTS `get_fiscal_quarter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_quarter`(
	calendar_date DATE
) RETURNS char(2) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE m TINYINT;
    DECLARE qtr CHAR(2);
    SET m = month(calendar_date);
    
    CASE
		WHEN m IN (9, 10, 11) THEN
        SET qtr = "Q1";
        WHEN m IN (12, 1, 2) THEN
        SET qtr = "Q2";
        WHEN m IN (3, 4, 5) THEN
        SET qtr = "Q3";
        ELSE SET qtr = "Q4";
    END CASE;
    
RETURN qtr;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_fiscal_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
	calendar_date DATE
) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE fiscal_year INT;
    SET fiscal_year = YEAR(DATE_ADD(calendar_date, interval 4 month));
RETURN fiscal_year;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_forecast_accuracy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_forecast_accuracy`(
		IN in_fiscal_year INT)
BEGIN
		with forecast_err_table as(
SELECT 	a.customer_code,
		sum(a.sold_quantity) as total_sold_quantity,
        sum(a.forecast_quantity) as total_forecast_quantity,
		sum((forecast_quantity - sold_quantity)) as net_err,
        sum((forecast_quantity - sold_quantity))*100/sum(forecast_quantity) as net_err_pct,
        sum(abs((forecast_quantity - sold_quantity))) as abs_net_err,
        sum(abs((forecast_quantity - sold_quantity)))*100/sum(forecast_quantity) as abs_net_err_pct
 FROM fact_act_est a
 where fiscal_year = in_fiscal_year
 GROUP BY customer_code)
 
 Select e.*,
		c.customer,
        c.market,
		if(abs_net_err_pct> 100, 0, 100 - abs_net_err_pct) as forecast_accuracy
		from forecast_err_table e
        join dim_customer c
        using (customer_code)
        order by forecast_accuracy asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_market_badge` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(
	IN in_market VARCHAR(45),
    IN in_fiscal_year YEAR,
    OUT out_badge VARCHAR(45) 
    )
BEGIN
	DECLARE qty INT DEFAULT 0;

	SELECT sum(s.sold_quantity) INTO qty
    FROM fact_sales_monthly s 
    JOIN dim_customer C 
    ON c.customer_code = s.customer_code
    
    WHERE get_fiscal_year(s.date) = in_market AND
    c.market = in_market
    GROUP BY c.market;
    
    IF qty > 5000000 THEN
		SET out_badge = "Gold";
	ELSE 
		SET out_badge = "Silver";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_monthly_gross_sales_for_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_sales_for_customer`(
	customer_code INT)
BEGIN
	select s.date,
round(sum(g.gross_price*s.sold_quantity),2) as gross_price_total
from fact_sales_monthly s
join fact_gross_price g 
on g.product_code = s.product_code and 
g.fiscal_year = get_fiscal_year(s.date)
where customer_code = customer_code
group by s.date
order by s.date asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_mult_cust_monthly_gross_sales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_mult_cust_monthly_gross_sales`(
	in_customer_code TEXT,
    in_years INT)
BEGIN
	SELECT 
    s.date,
    ROUND(SUM(g.gross_price * s.sold_quantity), 2) AS gross_price_total
FROM
    fact_sales_monthly s
        JOIN
    fact_gross_price g ON g.product_code = s.product_code
        AND g.fiscal_year = GET_FISCAL_YEAR(s.date)
WHERE
    find_in_set(s.customer_code, in_customer_code) > 0
    AND
    find_in_set(g.fiscal_year, in_years) > 0
    
GROUP BY s.date
ORDER BY s.date ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_top_n_customers_by_net_sales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_customers_by_net_sales`(
	IN in_market VARCHAR(45),
	IN in_fiscal_year INT,
    IN in_top_n INT
    )
BEGIN
	SELECT customer,
	 round(sum(net_sales)/1000000,2) as net_sales_mln
     
     FROM gdb0041.net_sales n
     join dim_customer c
     on c.customer_code = n.customer_code
     where n.fiscal_year = in_fiscal_year and n.market = in_market
     GROUP BY customer
     order by net_sales_mln desc
     limit in_top_n;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_top_n_markets_by_gross_sales_in_every_region` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_markets_by_gross_sales_in_every_region`(
	IN in_fiscal_year INT,
    IN in_top_n INT
)
BEGIN
		WITH cte1 AS (
    SELECT
        c.market,
        c.region,
        ROUND(SUM(s.gross_price_total) / 1000000, 2) AS gross_sales_mln
    FROM gross_sales s
    JOIN dim_customer c
        ON c.customer_code = s.customer_code
    WHERE fiscal_year = in_fiscal_year
    GROUP BY c.market, c.region
),
cte2 AS (
    SELECT *,
           DENSE_RANK() OVER (PARTITION BY region ORDER BY gross_sales_mln DESC) AS drnk
    FROM cte1
)
SELECT *
FROM cte2
WHERE drnk <= in_top_n;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_top_n_markets_by_net_sales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_markets_by_net_sales`(
	IN in_fiscal_year INT,
    IN in_top_n INT)
BEGIN
	SELECT market,
	 round(sum(net_sales)/1000000,2) as net_sales
     
     FROM net_sales
     where fiscal_year = in_fiscal_year
     GROUP BY market
     order by net_sales desc
     limit in_top_n;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_top_n_products_by_division_sold_quantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_products_by_division_sold_quantity`(
	IN in_fiscal_year INT,
    IN in_d_rnk INT
)
BEGIN
	WITH cte1 AS (
    SELECT 
        p.division,
        p.product,
        SUM(sold_quantity) AS sold_quantity
    FROM 
        fact_sales_monthly s
    JOIN  
        dim_product p ON s.product_code = p.product_code
	WHERE fiscal_year = in_fiscal_year
    GROUP BY 
        p.division, p.product
),
cte2 AS (
    SELECT 
        *,
        DENSE_RANK() OVER (PARTITION BY division ORDER BY sold_quantity DESC) AS d_rnk
    FROM 
        cte1
)
SELECT 
    *
FROM 
    cte2
WHERE 
    d_rnk <= in_d_rnk;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_top_n_products_by_net_sales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_products_by_net_sales`(
	IN in_market VARCHAR(45),
    IN in_fiscal_year INT,
    IN in_top_n INT
    )
BEGIN
	SELECT p.product,
	 round(sum(net_sales)/1000000,2) as net_sales
     
     FROM net_sales n
     join dim_product  p
     on p.product_code = n.product_code
     join dim_customer c 
     on c.customer_code = n.customer_code
     where fiscal_year = in_fiscal_year AND c.market = in_market
     GROUP BY p.product
     order by Net_Sales desc
     limit in_top_n; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-09 16:50:00
