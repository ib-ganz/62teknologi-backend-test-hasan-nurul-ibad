-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2023 at 03:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `62teknologi_backend_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_count` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `price` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`photos`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_claimed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `alias`, `name`, `image_url`, `is_closed`, `url`, `review_count`, `rating`, `latitude`, `longitude`, `price`, `phone`, `display_phone`, `distance`, `created_at`, `updated_at`, `photos`, `deleted_at`, `is_claimed`) VALUES
('0iaR2Eq8ISXIRTwGdxakJG', 'olio-e-più-new-york-7', 'Olio e Più', 'https://s3-media3.fl.yelpcdn.com/bphoto/Nn4I1SG0pYmqCyJPlArYOQ/o.jpg', 0, 'https://www.yelp.com/biz/olio-e-pi%C3%B9-new-york-7?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 3970, 5, 40.733798036104, -73.999773926499, '$$', '+12122436546', '(212) 243-6546', 3450.2286579892, '2023-01-26 00:04:43', '2023-01-26 00:04:43', '[\"https://awsimages.detik.net.id/community/media/visual/2021/02/22/kebab-platter-istimewa.png?w=700&q=90\",\"https://ajaib-wp-s3-artifact.s3.ap-southeast-1.amazonaws.com/img/2021/12/29141745/Bisnis-Kebab-Turki-itu-Menguntungkan-ini-5-Cara-untuk-Memulainya-1024x576.jpg\",\"https://image.akurat.co/uploads/gallery/2022/09/gal_6333fc8da6ad25-28030107-50844467.jpg\",\"https://media-cdn.tripadvisor.com/media/photo-s/26/ab/86/a3/caption.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 1),
('0X8DdxyYLYJXZzJK9ZctCg', 'luxury-diner-cheyenne', 'Luxury Diner', 'https://s3-media3.fl.yelpcdn.com/bphoto/KqHUyWxQjbghiOXqdB53Cw/o.jpg', 0, 'https://www.yelp.com/biz/luxury-diner-cheyenne?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 495, 4, 41.12746, -104.8288, '$$', '+13076351219', '(307) 635-1219', 4028.9842806977, '2023-01-28 02:29:58', '2023-01-28 02:29:58', '[\"https://cdn1-production-images-kly.akamaized.net/O-RvxwWeqjZEvOD0tRcn-q2enUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3332607/original/071894800_1608786362-WhatsApp_Image_2020-12-24_at_07.58.53.jpeg\",\"https://asset.kompas.com/crops/KDZ5xpSOSRVg48h82mlrERW79hg=/0x48:1000x715/750x500/data/photo/2020/11/13/5fadda8a15dde.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 0),
('2XmADbVsl5kFbhYSR0IzA2', 'the-high-line-new-york', 'The High Line', 'https://s3-media2.fl.yelpcdn.com/bphoto/8dWtYbMkHKNgyKe5S1DZkA/o.jpg', 0, 'https://www.yelp.com/biz/the-high-line-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 2527, 5, 40.7396039, -74.008476575157, '$', '+12122069922', '(212) 206-9922', 4387.9055882924, '2023-01-26 00:04:31', '2023-01-26 00:04:31', '[\"https://www.spendwithpennies.com/wp-content/uploads/2019/11/How-to-Cook-Italian-Sausage-SpendWithPennies-6-500x375.jpg\",\"https://www.eatingonadime.com/wp-content/uploads/2022/01/how-to-cook-sausage-6-2-1.jpg\",\"https://threesnackateers.com/wp-content/uploads/2022/07/How-To-Bake-Sausage-Recipe-540x720.jpg\",\"https://ajaib-wp-s3-artifact.s3.ap-southeast-1.amazonaws.com/img/2021/12/29141745/Bisnis-Kebab-Turki-itu-Menguntungkan-ini-5-Cara-untuk-Memulainya-1024x576.jpg\",\"https://image.akurat.co/uploads/gallery/2022/09/gal_6333fc8da6ad25-28030107-50844467.jpg\",\"https://media-cdn.tripadvisor.com/media/photo-s/26/ab/86/a3/caption.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 1),
('2ZfzCX6WDMTqeXrKNLsEeT', 'best-bagel-and-coffee-new-york', 'Best Bagel & Coffee', 'https://s3-media2.fl.yelpcdn.com/bphoto/Cp9antpXYQMxLur0oi6tPw/o.jpg', 0, 'https://www.yelp.com/biz/best-bagel-and-coffee-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 4320, 5, 40.7522683, -73.9910861, '$', '+12125644409', '(212) 564-4409', 5134.9195142646, '2023-01-26 00:03:10', '2023-01-26 00:03:10', '[\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 1),
('8l0YbtfZcelezRJWKX2wUu', 'clinton-street-baking-company-new-york-5', 'Clinton Street Baking Company', 'https://s3-media2.fl.yelpcdn.com/bphoto/cX6_cvryWi7ri2GKc-ASTg/o.jpg', 0, 'https://www.yelp.com/biz/clinton-street-baking-company-new-york-5?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 5655, 4, 40.721128, -73.983933, '$$', '+16466026263', '(646) 602-6263', 1623.4880246742, '2023-01-26 00:04:54', '2023-01-26 00:04:54', '[\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 1),
('8Y6bGpqCo9uxKtwLXAoIAt', '2-doors-down-cheyenne', '2 Doors Down', 'https://s3-media2.fl.yelpcdn.com/bphoto/I3fLhT9qMrI9_9IxnEHSFw/o.jpg', 0, 'https://www.yelp.com/biz/2-doors-down-cheyenne?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 388, 5, 41.134465009519, -104.81397200203, '$$', '+13076346008', '(307) 634-6008', 2853.4299506034, '2023-01-28 02:30:10', '2023-01-28 02:30:10', '[\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 0),
('AWbEoxbD2YVomRQpXNZlfe', 'bibble-and-sip-new-york-2', 'Bibble & Sip', 'https://s3-media1.fl.yelpcdn.com/bphoto/qVGATBDmFAaXL9l5Yzv-ww/o.jpg', 0, 'https://www.yelp.com/biz/bibble-and-sip-new-york-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 5535, 5, 40.7628355, -73.985180094783, '$$', '+16466495116', '(646) 649-5116', 6231.5882820268, '2023-01-25 17:26:16', '2023-01-25 17:26:16', '[\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 1),
('bsz2AHrMnN0XefkuYhhj0o', 'accomplice-beer-company-cheyenne', 'Accomplice Beer Company', 'https://s3-media3.fl.yelpcdn.com/bphoto/7aPBhYujArEMs3FIjR38oA/o.jpg', 0, 'https://www.yelp.com/biz/accomplice-beer-company-cheyenne?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 445, 4, 41.13182, -104.81422, '$$', '+13076322337', '(307) 632-2337', 2841.1522270095, '2023-01-28 02:30:20', '2023-01-28 02:30:20', '[\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\"]', NULL, 0),
('gu75j4dFkqLpYkf9RVkVKB', 'rib-and-chop-house-cheyenne-2', 'Rib & Chop House', 'https://s3-media4.fl.yelpcdn.com/bphoto/HC6eUBWXbCs3b1c361EyAg/o.jpg', 0, 'https://www.yelp.com/biz/rib-and-chop-house-cheyenne-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 778, 4, 41.13197, -104.81827, '$$', '+13075140271', '(307) 514-0271', 3156.9893216387, '2023-01-28 02:29:46', '2023-01-28 02:29:46', '[\"https://awsimages.detik.net.id/community/media/visual/2021/02/22/kebab-platter-istimewa.png?w=700&q=90\",\"https://ajaib-wp-s3-artifact.s3.ap-southeast-1.amazonaws.com/img/2021/12/29141745/Bisnis-Kebab-Turki-itu-Menguntungkan-ini-5-Cara-untuk-Memulainya-1024x576.jpg\",\"https://image.akurat.co/uploads/gallery/2022/09/gal_6333fc8da6ad25-28030107-50844467.jpg\",\"https://media-cdn.tripadvisor.com/media/photo-s/26/ab/86/a3/caption.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 0),
('jz32ucXe6l6ekzRbrZ8Q9V', 'central-park-conservancy-new-york', 'Central Park Conservancy', 'https://s3-media4.fl.yelpcdn.com/bphoto/RcCKWSjELHgHRmFJ1iwKGg/o.jpg', 0, 'https://www.yelp.com/biz/central-park-conservancy-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 2733, 5, 40.764266, -73.971656, '$', '+12123106600', '(212) 310-6600', 6404.88757555, '2023-01-25 17:25:27', '2023-01-25 17:25:27', '[\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 1),
('lcaHsiavU1oJUF8URqJ6nu', 'los-tacos-no-1-new-york', 'Los Tacos No.1', 'https://s3-media2.fl.yelpcdn.com/bphoto/FU44TYl3PzXsE06G4W5aog/o.jpg', 0, 'https://www.yelp.com/biz/los-tacos-no-1-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 3659, 5, 40.742254640236, -74.0059581, '$$', '', '', 4525.07953959, '2023-01-26 00:02:53', '2023-01-26 00:02:53', '[\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\"]', NULL, 1),
('MmbeVkLsAKGHG90W9DfdQv', 'katzs-delicatessen-new-york', 'Katz\'s Delicatessen', 'https://s3-media1.fl.yelpcdn.com/bphoto/1_2gtvgqMyuSgVJoCP6BQw/o.jpg', 0, 'https://www.yelp.com/biz/katzs-delicatessen-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 14599, 4, 36.35604818563392, -119.0221606470809, '$$', '+12122542246', '(212) 254-2246', 1836.5532226716, '2023-01-25 17:24:14', '2023-01-25 17:24:14', '[\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('mNN63p6cCZZ8sZR0WCiQr8', 'burger-and-lobster-flatiron-nyc-new-york', 'Burger & Lobster - Flatiron NYC', 'https://s3-media1.fl.yelpcdn.com/bphoto/2Z3Cn2sDxitAmWJYTdrkpA/o.jpg', 0, 'https://www.yelp.com/biz/burger-and-lobster-flatiron-nyc-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 5832, 4, 40.74007, -73.99344, '$$', '+16468337532', '(646) 833-7532', 3867.2454876886, '2023-01-26 00:03:46', '2023-01-26 00:03:46', '[\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1603522265/p3y4vvdyeszo3mg7bqsq.jpg\",\"https://cdn1-production-images-kly.akamaized.net/O-RvxwWeqjZEvOD0tRcn-q2enUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3332607/original/071894800_1608786362-WhatsApp_Image_2020-12-24_at_07.58.53.jpeg\",\"https://asset.kompas.com/crops/KDZ5xpSOSRVg48h82mlrERW79hg=/0x48:1000x715/750x500/data/photo/2020/11/13/5fadda8a15dde.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('msvBtWfA9ChNIMjqOmwPu8', 'gramercy-tavern-new-york', 'Gramercy Tavern', 'https://s3-media2.fl.yelpcdn.com/bphoto/f14WAmWETi0cu2f6rUBj-Q/o.jpg', 0, 'https://www.yelp.com/biz/gramercy-tavern-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 3267, 5, 40.73844, -73.98825, '$$$$', '+12124770777', '(212) 477-0777', 3588.8144332004, '2023-01-26 00:04:20', '2023-01-26 00:04:20', '[\"https://assets.promediateknologi.com/crop/0x0:0x0/0x0/webp/photo/2022/12/12/4153300405.jpg\",\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1603522265/p3y4vvdyeszo3mg7bqsq.jpg\",\"https://cdn1-production-images-kly.akamaized.net/O-RvxwWeqjZEvOD0tRcn-q2enUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3332607/original/071894800_1608786362-WhatsApp_Image_2020-12-24_at_07.58.53.jpeg\",\"https://asset.kompas.com/crops/KDZ5xpSOSRVg48h82mlrERW79hg=/0x48:1000x715/750x500/data/photo/2020/11/13/5fadda8a15dde.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('O1n0aF7JiqTbMq3BUKoQAn', 'peter-luger-brooklyn-2', 'Peter Luger', 'https://s3-media1.fl.yelpcdn.com/bphoto/d0XSKED0U0sTgFWhCQdY7w/o.jpg', 0, 'https://www.yelp.com/biz/peter-luger-brooklyn-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 6674, 4, 40.709945, -73.962478, '$$$$', '+17183877400', '(718) 387-7400', 1446.5330245621, '2023-01-26 00:03:57', '2023-01-26 00:03:57', '[\"https://img.inews.co.id/media/822/files/inews_new/2020/10/30/IMG_30102020_135842__822_x_430_piksel_.jpg\",\"https://assets.promediateknologi.com/crop/0x0:0x0/0x0/webp/photo/2022/12/12/4153300405.jpg\",\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1603522265/p3y4vvdyeszo3mg7bqsq.jpg\",\"https://cdn1-production-images-kly.akamaized.net/O-RvxwWeqjZEvOD0tRcn-q2enUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3332607/original/071894800_1608786362-WhatsApp_Image_2020-12-24_at_07.58.53.jpeg\",\"https://asset.kompas.com/crops/KDZ5xpSOSRVg48h82mlrERW79hg=/0x48:1000x715/750x500/data/photo/2020/11/13/5fadda8a15dde.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('p20hNp1qrxEoIIbgiJlVkL', 'the-metropolitan-museum-of-art-new-york-3', 'The Metropolitan Museum of Art', 'https://s3-media1.fl.yelpcdn.com/bphoto/NcHMjAQ1mgaPKwQEEOLM_A/o.jpg', 0, 'https://www.yelp.com/biz/the-metropolitan-museum-of-art-new-york-3?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 3319, 5, 40.779449, -73.963245, '$', '+12125357710', '(212) 535-7710', 8169.5829823392, '2023-01-25 17:25:48', '2023-01-25 17:25:48', '[\"https://i0.wp.com/i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/e4f9024b-e532-41b6-843f-7cc91df4d1a4_Go-Biz_20211105_233926.jpeg\",\"https://img.inews.co.id/media/822/files/inews_new/2020/10/30/IMG_30102020_135842__822_x_430_piksel_.jpg\",\"https://assets.promediateknologi.com/crop/0x0:0x0/0x0/webp/photo/2022/12/12/4153300405.jpg\",\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1603522265/p3y4vvdyeszo3mg7bqsq.jpg\",\"https://cdn1-production-images-kly.akamaized.net/O-RvxwWeqjZEvOD0tRcn-q2enUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3332607/original/071894800_1608786362-WhatsApp_Image_2020-12-24_at_07.58.53.jpeg\",\"https://asset.kompas.com/crops/KDZ5xpSOSRVg48h82mlrERW79hg=/0x48:1000x715/750x500/data/photo/2020/11/13/5fadda8a15dde.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('pOnLTvUxyvhPPhmPk5Y4ZI', 'destination-taiwan-cheyenne', 'Destination Taiwan', 'https://s3-media3.fl.yelpcdn.com/bphoto/TkbJMbD8J6fJHSED0dgOVg/o.jpg', 0, 'https://www.yelp.com/biz/destination-taiwan-cheyenne?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 116, 5, 41.16049, -104.7761, '$', '+13075142702', '(307) 514-2702', 3532.9660696648, '2023-01-28 02:29:20', '2023-01-28 02:29:20', '[\"https://img.inews.co.id/media/822/files/inews_new/2020/10/30/IMG_30102020_135842__822_x_430_piksel_.jpg\",\"https://assets.promediateknologi.com/crop/0x0:0x0/0x0/webp/photo/2022/12/12/4153300405.jpg\",\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1603522265/p3y4vvdyeszo3mg7bqsq.jpg\",\"https://cdn1-production-images-kly.akamaized.net/O-RvxwWeqjZEvOD0tRcn-q2enUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3332607/original/071894800_1608786362-WhatsApp_Image_2020-12-24_at_07.58.53.jpeg\",\"https://asset.kompas.com/crops/KDZ5xpSOSRVg48h82mlrERW79hg=/0x48:1000x715/750x500/data/photo/2020/11/13/5fadda8a15dde.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 0),
('rLHZ64DnRwSE0bYu0iVd9t', 'levain-bakery-new-york', 'Levain Bakery', 'https://s3-media3.fl.yelpcdn.com/bphoto/DH29qeTmPotJbCSzkjYJwg/o.jpg', 0, 'https://www.yelp.com/biz/levain-bakery-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 9428, 5, 40.779961, -73.980299, '$$', '+19174643769', '(917) 464-3769', 8115.9031940938, '2023-01-24 09:06:17', '2023-01-24 09:06:17', '[\"https://media-cdn.tripadvisor.com/media/photo-s/26/ab/86/a3/caption.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\"]', NULL, 1),
('rm46jRlyS1qv3jNnuXGsPe', 'lovemama-new-york', 'LoveMama', 'https://s3-media1.fl.yelpcdn.com/bphoto/bLlFKTlVuLfmF-lIDGIjZA/o.jpg', 0, 'https://www.yelp.com/biz/lovemama-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 6319, 5, 40.730408722512, -73.986126730332, '$$', '+12122545370', '(212) 254-5370', 2670.2440958289, '2023-01-25 17:26:05', '2023-01-25 17:26:05', '[\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('ScXjRL2UXsUGQLpcS0Udsb', 'the-halal-guys-new-york-2', 'The Halal Guys', 'https://s3-media1.fl.yelpcdn.com/bphoto/MYnXprCKOS0JlpQJRMOR7Q/o.jpg', 0, 'https://www.yelp.com/biz/the-halal-guys-new-york-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 10254, 4, 40.761861, -73.979306, '$', '+13475271505', '(347) 527-1505', 6102.7448070761, '2023-01-24 09:08:33', '2023-01-24 09:08:33', '[\"https://asset.kompas.com/crops/KDZ5xpSOSRVg48h82mlrERW79hg=/0x48:1000x715/750x500/data/photo/2020/11/13/5fadda8a15dde.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('W3a5YtABHdONmrvYVYy0j6', 'los-tacos-no-1-new-york-3', 'Los Tacos No.1', 'https://s3-media4.fl.yelpcdn.com/bphoto/5wEe4FCwda16knmBHSsX0Q/o.jpg', 0, 'https://www.yelp.com/biz/los-tacos-no-1-new-york-3?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 2589, 5, 40.7575067, -73.9877717, '$', '+12125744696', '(212) 574-4696', 5664.9319970004, '2023-01-26 00:04:09', '2023-01-26 00:04:09', '[\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('wZxAQRkbDxmbaSDY5Kp0jP', 'prince-street-pizza-new-york-2', 'Prince Street Pizza', 'https://s3-media2.fl.yelpcdn.com/bphoto/I4gm7i1zoamgAk1hmOKbKw/o.jpg', 0, 'https://www.yelp.com/biz/prince-street-pizza-new-york-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 4731, 5, 40.723087556056, -73.994530011776, '$', '+12129664100', '(212) 966-4100', 2209.3116178605, '2023-01-26 00:03:36', '2023-01-26 00:03:36', '[\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('x6Yt8ldAnVj2w4DMLLVhGW', 'doughnut-plant-new-york-6', 'Doughnut Plant', 'https://s3-media1.fl.yelpcdn.com/bphoto/hLWKXsLv6hyltNSilBy8-g/o.jpg', 0, 'https://www.yelp.com/biz/doughnut-plant-new-york-6?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 3413, 5, 40.71632, -73.98848, '$$', '+12125053700', '(212) 505-3700', 1310.0243148055, '2023-01-26 00:05:23', '2023-01-26 00:05:23', '[\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('yK8bknWMJDUr1Hrssxiicd', 'ippudo-ny-new-york-7', 'Ippudo NY', 'https://s3-media1.fl.yelpcdn.com/bphoto/zF3EgqHCk7zBUwD2B3WTEA/o.jpg', 0, 'https://www.yelp.com/biz/ippudo-ny-new-york-7?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 10539, 4, 40.73092, -73.99015, '$$', '+12123880088', '(212) 388-0088', 2820.7453024396, '2023-01-25 17:24:44', '2023-01-25 17:24:44', '[\"https://cdn1-production-images-kly.akamaized.net/O-RvxwWeqjZEvOD0tRcn-q2enUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3332607/original/071894800_1608786362-WhatsApp_Image_2020-12-24_at_07.58.53.jpeg\",\"https://asset.kompas.com/crops/KDZ5xpSOSRVg48h82mlrERW79hg=/0x48:1000x715/750x500/data/photo/2020/11/13/5fadda8a15dde.jpg\",\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ajLPH-1fDTLk2MiF1qtwNPANIpw4tCRGmw&usqp=CAU\",\"https://kbu-cdn.com/dk/wp-content/uploads/martabak-8-rasa.jpg\",\"https://asset.kompas.com/crops/5u2ge0cWoJj0HOct3B1imjsjbLA=/0x244:800x777/780x390/data/photo/2021/05/23/60a9b166c6503.jpeg\",\"https://assets.digination.id/crop/0x0:0x0/x/photo/2021/10/06/274099773.jpg\",\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1),
('YLuD5w8JWT3ZYtqoYGLjET', 'casa-velasco-mexican-restaurant-bass-lake', 'Casa Velasco Mexican Restaurant', 'https://s3-media1.fl.yelpcdn.com/bphoto/TOLhPr2l8MhmpILH5EBmJg/o.jpg', 0, 'https://www.yelp.com/biz/casa-velasco-mexican-restaurant-bass-lake?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 234, 5, 37.32073, -119.5586, '$$', '+15596832272', '(559) 683-2272', 23106.113495366, '2023-01-25 17:22:38', '2023-01-25 17:22:38', '[\"https://cdn.vox-cdn.com/thumbor/5d_RtADj8ncnVqh-afV3mU-XQv0=/0x0:1600x1067/1200x900/filters:focal(672x406:928x662)/cdn.vox-cdn.com/uploads/chorus_image/image/57698831/51951042270_78ea1e8590_h.7.jpg\",\"https://images.unsplash.com/photo-1600891964599-f61ba0e24092?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudCUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80\",\"https://assets.bonappetit.com/photos/631788f25635b01b337f6bb4/master/pass/220827_GuangXu_BA-UncleLou_014.jpg\",\"https://khni.kerry.com/wp-content/uploads/2019/02/Restaurant-meal.jpg\",\"https://food.fnr.sndimg.com/content/dam/images/food/fullset/2017/11/14/0/FN_healthy-fast-food-applebees-steak_s4x3.jpg.rend.hgtvcom.441.331.suffix/1510694267044.jpeg\"]', NULL, 1),
('ZLYrM3XjtUiMavDDla57Vg', 'thai-villa-new-york-2', 'Thai Villa', 'https://s3-media4.fl.yelpcdn.com/bphoto/xmFtvhWJIJH_BDFRo5epaA/o.jpg', 0, 'https://www.yelp.com/biz/thai-villa-new-york-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug', 4482, 5, 40.73902, -73.99065, '$$', '+12128029999', '(212) 802-9999', 3690.5934427449, '2023-01-26 00:03:25', '2023-01-26 00:03:25', '[\"https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/sandwich-recipe-1.jpg\",\"https://cdn0-production-images-kly.akamaized.net/57LAAs1RJInCkjUtA04ZxJCs0Tg=/0x0:7952x4482/673x373/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3644725/original/082558000_1637895563-shutterstock_1369751798.jpg\",\"https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800\",\"https://o-cdn-cas.sirclocdn.com/parenting/images/resep-kebab.width-800.jpegquality-80.jpg\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://thecozycook.com/wp-content/uploads/2020/09/Slow-Cooker-Beef-Stew-Recipe-f.jpg\",\"https://iwashyoudry.com/wp-content/uploads/2019/12/Roast-Beef-Tenderloin-11.jpg\",\"https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Pulled-Roast-Beef-Slider-Sandwiches-with-Bell-Peppers.png\",\"https://caramembuat.id/wp-content/uploads/2022/06/Cara-Membuat-Kebab-Rumahan.jpg\",\"https://asset.kompas.com/crops/3EonppP-IgH8YXiTpiM2lF0--pU=/0x0:1000x667/750x500/data/photo/2022/03/26/623f06cb40da4.jpg\",\"https://images-gmi-pmc.edge-generalmills.com/b57ee35f-bce2-4229-8bf5-19b97876a4cb.jpg\",\"https://www.misstamchiak.com/wp-content/uploads/2021/02/prince-coffee-house-15.jpg\",\"https://kbu-cdn.com/dk/wp-content/uploads/kebab-sosis.jpg\"]', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_category`
--

CREATE TABLE `business_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_category`
--

INSERT INTO `business_category` (`id`, `business_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'rLHZ64DnRwSE0bYu0iVd9t', 2, '2023-01-24 09:06:17', '2023-01-24 09:06:17'),
(3, 'ScXjRL2UXsUGQLpcS0Udsb', 3, '2023-01-24 09:08:33', '2023-01-24 09:08:33'),
(4, 'ScXjRL2UXsUGQLpcS0Udsb', 4, '2023-01-24 09:08:33', '2023-01-24 09:08:33'),
(5, 'ScXjRL2UXsUGQLpcS0Udsb', 5, '2023-01-24 09:08:33', '2023-01-24 09:08:33'),
(6, 'BW8KJCA1Xwh9rx1KygUL6o', 10, '2023-01-25 17:22:18', '2023-01-25 17:22:18'),
(7, 'YLuD5w8JWT3ZYtqoYGLjET', 10, '2023-01-25 17:22:38', '2023-01-25 17:22:38'),
(8, 'MmbeVkLsAKGHG90W9DfdQv', 11, '2023-01-25 17:24:14', '2023-01-25 17:24:14'),
(9, 'MmbeVkLsAKGHG90W9DfdQv', 6, '2023-01-25 17:24:14', '2023-01-25 17:24:14'),
(10, 'MmbeVkLsAKGHG90W9DfdQv', 12, '2023-01-25 17:24:14', '2023-01-25 17:24:14'),
(11, 'yK8bknWMJDUr1Hrssxiicd', 9, '2023-01-25 17:24:44', '2023-01-25 17:24:44'),
(12, 'jz32ucXe6l6ekzRbrZ8Q9V', 13, '2023-01-25 17:25:27', '2023-01-25 17:25:27'),
(13, 'p20hNp1qrxEoIIbgiJlVkL', 14, '2023-01-25 17:25:48', '2023-01-25 17:25:48'),
(14, 'rm46jRlyS1qv3jNnuXGsPe', 15, '2023-01-25 17:26:05', '2023-01-25 17:26:05'),
(15, 'rm46jRlyS1qv3jNnuXGsPe', 16, '2023-01-25 17:26:05', '2023-01-25 17:26:05'),
(16, 'rm46jRlyS1qv3jNnuXGsPe', 17, '2023-01-25 17:26:05', '2023-01-25 17:26:05'),
(17, 'AWbEoxbD2YVomRQpXNZlfe', 18, '2023-01-25 17:26:16', '2023-01-25 17:26:16'),
(18, 'AWbEoxbD2YVomRQpXNZlfe', 2, '2023-01-25 17:26:16', '2023-01-25 17:26:16'),
(19, 'AWbEoxbD2YVomRQpXNZlfe', 19, '2023-01-25 17:26:16', '2023-01-25 17:26:16'),
(20, 'lcaHsiavU1oJUF8URqJ6nu', 20, '2023-01-26 00:02:53', '2023-01-26 00:02:53'),
(21, '2ZfzCX6WDMTqeXrKNLsEeT', 21, '2023-01-26 00:03:10', '2023-01-26 00:03:10'),
(22, '2ZfzCX6WDMTqeXrKNLsEeT', 18, '2023-01-26 00:03:10', '2023-01-26 00:03:10'),
(23, '2ZfzCX6WDMTqeXrKNLsEeT', 22, '2023-01-26 00:03:10', '2023-01-26 00:03:10'),
(24, 'ZLYrM3XjtUiMavDDla57Vg', 15, '2023-01-26 00:03:25', '2023-01-26 00:03:25'),
(25, 'wZxAQRkbDxmbaSDY5Kp0jP', 7, '2023-01-26 00:03:36', '2023-01-26 00:03:36'),
(26, 'wZxAQRkbDxmbaSDY5Kp0jP', 23, '2023-01-26 00:03:36', '2023-01-26 00:03:36'),
(27, 'mNN63p6cCZZ8sZR0WCiQr8', 24, '2023-01-26 00:03:46', '2023-01-26 00:03:46'),
(28, 'mNN63p6cCZZ8sZR0WCiQr8', 25, '2023-01-26 00:03:46', '2023-01-26 00:03:46'),
(29, 'mNN63p6cCZZ8sZR0WCiQr8', 26, '2023-01-26 00:03:46', '2023-01-26 00:03:46'),
(30, 'O1n0aF7JiqTbMq3BUKoQAn', 27, '2023-01-26 00:03:57', '2023-01-26 00:03:57'),
(31, 'W3a5YtABHdONmrvYVYy0j6', 20, '2023-01-26 00:04:09', '2023-01-26 00:04:09'),
(32, 'msvBtWfA9ChNIMjqOmwPu8', 26, '2023-01-26 00:04:20', '2023-01-26 00:04:20'),
(33, '2XmADbVsl5kFbhYSR0IzA2', 13, '2023-01-26 00:04:31', '2023-01-26 00:04:31'),
(34, '0iaR2Eq8ISXIRTwGdxakJG', 7, '2023-01-26 00:04:43', '2023-01-26 00:04:43'),
(35, '0iaR2Eq8ISXIRTwGdxakJG', 23, '2023-01-26 00:04:43', '2023-01-26 00:04:43'),
(36, '0iaR2Eq8ISXIRTwGdxakJG', 28, '2023-01-26 00:04:43', '2023-01-26 00:04:43'),
(37, '8l0YbtfZcelezRJWKX2wUu', 2, '2023-01-26 00:04:54', '2023-01-26 00:04:54'),
(38, '8l0YbtfZcelezRJWKX2wUu', 26, '2023-01-26 00:04:54', '2023-01-26 00:04:54'),
(39, '8l0YbtfZcelezRJWKX2wUu', 22, '2023-01-26 00:04:54', '2023-01-26 00:04:54'),
(40, 'x6Yt8ldAnVj2w4DMLLVhGW', 29, '2023-01-26 00:05:23', '2023-01-26 00:05:23'),
(41, 'x6Yt8ldAnVj2w4DMLLVhGW', 18, '2023-01-26 00:05:23', '2023-01-26 00:05:23'),
(42, 'pOnLTvUxyvhPPhmPk5Y4ZI', 30, '2023-01-28 02:29:20', '2023-01-28 02:29:20'),
(43, 'pOnLTvUxyvhPPhmPk5Y4ZI', 31, '2023-01-28 02:29:20', '2023-01-28 02:29:20'),
(44, 'gu75j4dFkqLpYkf9RVkVKB', 24, '2023-01-28 02:29:46', '2023-01-28 02:29:46'),
(45, 'gu75j4dFkqLpYkf9RVkVKB', 27, '2023-01-28 02:29:46', '2023-01-28 02:29:46'),
(46, 'gu75j4dFkqLpYkf9RVkVKB', 26, '2023-01-28 02:29:46', '2023-01-28 02:29:46'),
(47, '0X8DdxyYLYJXZzJK9ZctCg', 32, '2023-01-28 02:29:58', '2023-01-28 02:29:58'),
(48, '0X8DdxyYLYJXZzJK9ZctCg', 22, '2023-01-28 02:29:58', '2023-01-28 02:29:58'),
(49, '0X8DdxyYLYJXZzJK9ZctCg', 25, '2023-01-28 02:29:58', '2023-01-28 02:29:58'),
(50, '8Y6bGpqCo9uxKtwLXAoIAt', 25, '2023-01-28 02:30:10', '2023-01-28 02:30:10'),
(51, '8Y6bGpqCo9uxKtwLXAoIAt', 33, '2023-01-28 02:30:10', '2023-01-28 02:30:10'),
(52, 'bsz2AHrMnN0XefkuYhhj0o', 34, '2023-01-28 02:30:20', '2023-01-28 02:30:20'),
(53, 'bsz2AHrMnN0XefkuYhhj0o', 25, '2023-01-28 02:30:20', '2023-01-28 02:30:20'),
(54, 'bsz2AHrMnN0XefkuYhhj0o', 7, '2023-01-28 02:30:20', '2023-01-28 02:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `business_transaction`
--

CREATE TABLE `business_transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_transaction`
--

INSERT INTO `business_transaction` (`id`, `business_id`, `transaction_id`, `created_at`, `updated_at`) VALUES
(3, 'rLHZ64DnRwSE0bYu0iVd9t', 1, '2023-01-24 09:06:17', '2023-01-24 09:06:17'),
(4, 'rLHZ64DnRwSE0bYu0iVd9t', 2, '2023-01-24 09:06:17', '2023-01-24 09:06:17'),
(5, 'ScXjRL2UXsUGQLpcS0Udsb', 3, '2023-01-24 09:08:33', '2023-01-24 09:08:33'),
(6, 'ScXjRL2UXsUGQLpcS0Udsb', 4, '2023-01-24 09:08:33', '2023-01-24 09:08:33'),
(7, 'BW8KJCA1Xwh9rx1KygUL6o', 1, '2023-01-25 17:22:18', '2023-01-25 17:22:18'),
(8, 'BW8KJCA1Xwh9rx1KygUL6o', 2, '2023-01-25 17:22:18', '2023-01-25 17:22:18'),
(9, 'YLuD5w8JWT3ZYtqoYGLjET', 1, '2023-01-25 17:22:38', '2023-01-25 17:22:38'),
(10, 'YLuD5w8JWT3ZYtqoYGLjET', 2, '2023-01-25 17:22:38', '2023-01-25 17:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `alias`, `title`, `created_at`, `updated_at`) VALUES
(2, 'bakeries', 'Bakeries', '2023-01-24 09:06:17', '2023-01-24 09:06:17'),
(3, 'foodstands', 'Food Stands', '2023-01-24 09:08:33', '2023-01-24 09:08:33'),
(4, 'mideastern', 'Middle Eastern', '2023-01-24 09:08:33', '2023-01-24 09:08:33'),
(5, 'halal', 'Halal', '2023-01-24 09:08:33', '2023-01-24 09:08:33'),
(6, 'sandwiches', 'Sandwiches', NULL, NULL),
(7, 'pizza', 'Pizza', NULL, NULL),
(8, 'korean', 'Korean', NULL, NULL),
(9, 'ramen', 'Ramen', NULL, NULL),
(10, 'mexican', 'Mexican', '2023-01-25 17:22:18', '2023-01-25 17:22:18'),
(11, 'delis', 'Delis', '2023-01-25 17:24:14', '2023-01-25 17:24:14'),
(12, 'soup', 'Soup', '2023-01-25 17:24:14', '2023-01-25 17:24:14'),
(13, 'parks', 'Parks', '2023-01-25 17:25:27', '2023-01-25 17:25:27'),
(14, 'artmuseums', 'Art Museums', '2023-01-25 17:25:48', '2023-01-25 17:25:48'),
(15, 'thai', 'Thai', '2023-01-25 17:26:05', '2023-01-25 17:26:05'),
(16, 'malaysian', 'Malaysian', '2023-01-25 17:26:05', '2023-01-25 17:26:05'),
(17, 'vietnamese', 'Vietnamese', '2023-01-25 17:26:05', '2023-01-25 17:26:05'),
(18, 'coffee', 'Coffee & Tea', '2023-01-25 17:26:16', '2023-01-25 17:26:16'),
(19, 'desserts', 'Desserts', '2023-01-25 17:26:16', '2023-01-25 17:26:16'),
(20, 'tacos', 'Tacos', '2023-01-26 00:02:53', '2023-01-26 00:02:53'),
(21, 'bagels', 'Bagels', '2023-01-26 00:03:10', '2023-01-26 00:03:10'),
(22, 'breakfast_brunch', 'Breakfast & Brunch', '2023-01-26 00:03:10', '2023-01-26 00:03:10'),
(23, 'italian', 'Italian', '2023-01-26 00:03:36', '2023-01-26 00:03:36'),
(24, 'seafood', 'Seafood', '2023-01-26 00:03:46', '2023-01-26 00:03:46'),
(25, 'burgers', 'Burgers', '2023-01-26 00:03:46', '2023-01-26 00:03:46'),
(26, 'newamerican', 'American (New)', '2023-01-26 00:03:46', '2023-01-26 00:03:46'),
(27, 'steak', 'Steakhouses', '2023-01-26 00:03:57', '2023-01-26 00:03:57'),
(28, 'cocktailbars', 'Cocktail Bars', '2023-01-26 00:04:43', '2023-01-26 00:04:43'),
(29, 'donuts', 'Donuts', '2023-01-26 00:05:23', '2023-01-26 00:05:23'),
(30, 'bubbletea', 'Bubble Tea', '2023-01-28 02:29:20', '2023-01-28 02:29:20'),
(31, 'taiwanese', 'Taiwanese', '2023-01-28 02:29:20', '2023-01-28 02:29:20'),
(32, 'diners', 'Diners', '2023-01-28 02:29:58', '2023-01-28 02:29:58'),
(33, 'beerbar', 'Beer Bar', '2023-01-28 02:30:10', '2023-01-28 02:30:10'),
(34, 'breweries', 'Breweries', '2023-01-28 02:30:20', '2023-01-28 02:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_overnight` tinyint(1) NOT NULL,
  `start` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `business_id`, `is_overnight`, `start`, `end`, `day`, `created_at`, `updated_at`) VALUES
(1, 'ScXjRL2UXsUGQLpcS0Udsb', 0, '0700', '1900', 1, NULL, NULL),
(2, 'ScXjRL2UXsUGQLpcS0Udsb', 0, '0700', '1900', 2, NULL, NULL),
(3, 'ScXjRL2UXsUGQLpcS0Udsb', 0, '0700', '1900', 3, NULL, NULL),
(4, 'ScXjRL2UXsUGQLpcS0Udsb', 0, '0700', '1900', 4, NULL, NULL),
(5, '0iaR2Eq8ISXIRTwGdxakJG', 0, '1000', '2200', 1, NULL, NULL),
(6, '0iaR2Eq8ISXIRTwGdxakJG', 0, '1000', '2200', 2, NULL, NULL),
(7, '0iaR2Eq8ISXIRTwGdxakJG', 0, '1000', '2200', 3, NULL, NULL),
(8, '0iaR2Eq8ISXIRTwGdxakJG', 0, '1000', '2200', 4, NULL, NULL),
(9, '0iaR2Eq8ISXIRTwGdxakJG', 0, '1000', '2200', 5, NULL, NULL),
(10, '0iaR2Eq8ISXIRTwGdxakJG', 0, '1000', '2200', 6, NULL, NULL),
(11, 'x6Yt8ldAnVj2w4DMLLVhGW', 1, '0000', '2400', 5, NULL, NULL),
(12, 'yK8bknWMJDUr1Hrssxiicd', 0, '0900', '2100', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `business_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cross_streets` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `address1`, `address2`, `address3`, `city`, `zip_code`, `country`, `state`, `display_address`, `created_at`, `updated_at`, `business_id`, `cross_streets`) VALUES
(1, '167 W 74th St', NULL, NULL, 'New York', '10023', 'US', 'NY', '[\"167 W 74th St\",\"New York, NY 10023\"]', '2023-01-24 09:06:17', '2023-01-24 09:06:17', 'rLHZ64DnRwSE0bYu0iVd9t', ''),
(2, 'W 53rd Street And 6th Ave', NULL, NULL, 'New York', '10019', 'US', 'NY', '[\"W 53rd Street And 6th Ave\",\"New York, NY 10019\"]', '2023-01-24 09:08:33', '2023-01-24 09:08:33', 'ScXjRL2UXsUGQLpcS0Udsb', ''),
(3, '54311 Rd 432', NULL, NULL, 'Bass Lake', '93604', 'US', 'CA', '[\"54311 Rd 432\",\"Bass Lake, CA 93604\"]', '2023-01-25 17:22:38', '2023-01-25 17:22:38', 'YLuD5w8JWT3ZYtqoYGLjET', ''),
(4, '205 E Houston St', NULL, NULL, 'Guitar Lake', '10002', 'US', 'CA', '[\"54888 Rd 432\",\"Guitar Lake, CA 93604\"]', '2023-01-25 17:24:14', '2023-01-25 17:24:14', 'MmbeVkLsAKGHG90W9DfdQv', ''),
(5, '65 4th Ave', NULL, NULL, 'New York', '10003', 'US', 'NY', '[\"65 4th Ave\",\"New York, NY 10003\"]', '2023-01-25 17:24:44', '2023-01-25 17:24:44', 'yK8bknWMJDUr1Hrssxiicd', ''),
(6, '14 E 60th St', NULL, NULL, 'New York', '10022', 'US', 'NY', '[\"14 E 60th St\",\"New York, NY 10022\"]', '2023-01-25 17:25:27', '2023-01-25 17:25:27', 'jz32ucXe6l6ekzRbrZ8Q9V', ''),
(7, '1000 Fifth Ave', NULL, NULL, 'New York', '10028', 'US', 'NY', '[\"1000 Fifth Ave\",\"New York, NY 10028\"]', '2023-01-25 17:25:48', '2023-01-25 17:25:48', 'p20hNp1qrxEoIIbgiJlVkL', ''),
(8, '174 2nd Ave', NULL, NULL, 'New York', '10003', 'US', 'NY', '[\"174 2nd Ave\",\"New York, NY 10003\"]', '2023-01-25 17:26:05', '2023-01-25 17:26:05', 'rm46jRlyS1qv3jNnuXGsPe', ''),
(9, '253 W 51st St', NULL, NULL, 'New York', '10019', 'US', 'NY', '[\"253 W 51st St\",\"New York, NY 10019\"]', '2023-01-25 17:26:16', '2023-01-25 17:26:16', 'AWbEoxbD2YVomRQpXNZlfe', ''),
(10, '75 9th Ave', NULL, 'Chelsea Market', 'New York', '10011', 'US', 'NY', '[\"75 9th Ave\",\"Chelsea Market\",\"New York, NY 10011\"]', '2023-01-26 00:02:53', '2023-01-26 00:02:53', 'lcaHsiavU1oJUF8URqJ6nu', ''),
(11, '225 W 35th St', NULL, NULL, 'New York', '10001', 'US', 'NY', '[\"225 W 35th St\",\"New York, NY 10001\"]', '2023-01-26 00:03:10', '2023-01-26 00:03:10', '2ZfzCX6WDMTqeXrKNLsEeT', ''),
(12, '5 E 19th St', 'G Floor', NULL, 'New York', '10003', 'US', 'NY', '[\"5 E 19th St\",\"G Floor\",\"New York, NY 10003\"]', '2023-01-26 00:03:25', '2023-01-26 00:03:25', 'ZLYrM3XjtUiMavDDla57Vg', ''),
(13, '27 Prince St', NULL, NULL, 'New York', '10012', 'US', 'NY', '[\"27 Prince St\",\"New York, NY 10012\"]', '2023-01-26 00:03:36', '2023-01-26 00:03:36', 'wZxAQRkbDxmbaSDY5Kp0jP', ''),
(14, '39 W 19th St', NULL, NULL, 'New York', '10011', 'US', 'NY', '[\"39 W 19th St\",\"New York, NY 10011\"]', '2023-01-26 00:03:46', '2023-01-26 00:03:46', 'mNN63p6cCZZ8sZR0WCiQr8', ''),
(15, '178 Broadway', NULL, NULL, 'Brooklyn', '11211', 'US', 'NY', '[\"178 Broadway\",\"Brooklyn, NY 11211\"]', '2023-01-26 00:03:57', '2023-01-26 00:03:57', 'O1n0aF7JiqTbMq3BUKoQAn', ''),
(16, '229 W 43rd St', NULL, NULL, 'New York', '10036', 'US', 'NY', '[\"229 W 43rd St\",\"New York, NY 10036\"]', '2023-01-26 00:04:09', '2023-01-26 00:04:09', 'W3a5YtABHdONmrvYVYy0j6', ''),
(17, '42 E 20th St', NULL, NULL, 'New York', '10003', 'US', 'NY', '[\"42 E 20th St\",\"New York, NY 10003\"]', '2023-01-26 00:04:20', '2023-01-26 00:04:20', 'msvBtWfA9ChNIMjqOmwPu8', ''),
(18, '820 Washington St', NULL, NULL, 'New York', '10014', 'US', 'NY', '[\"820 Washington St\",\"New York, NY 10014\"]', '2023-01-26 00:04:31', '2023-01-26 00:04:31', '2XmADbVsl5kFbhYSR0IzA2', ''),
(19, '3 Greenwich Ave', NULL, NULL, 'New York', '10014', 'US', 'NY', '[\"3 Greenwich Ave\",\"New York, NY 10014\"]', '2023-01-26 00:04:43', '2023-01-26 00:04:43', '0iaR2Eq8ISXIRTwGdxakJG', ''),
(20, '4 Clinton St', NULL, NULL, 'New York', '10002', 'US', 'NY', '[\"4 Clinton St\",\"New York, NY 10002\"]', '2023-01-26 00:04:54', '2023-01-26 00:04:54', '8l0YbtfZcelezRJWKX2wUu', ''),
(21, '379 Grand St', NULL, NULL, 'New York', '10002', 'US', 'NY', '[\"379 Grand St\",\"New York, NY 10002\"]', '2023-01-26 00:05:23', '2023-01-26 00:05:23', 'x6Yt8ldAnVj2w4DMLLVhGW', ''),
(22, '2634 Dell Range Blvd', NULL, NULL, 'Cheyenne', '82009', 'US', 'WY', '[\"2634 Dell Range Blvd\",\"Cheyenne, WY 82009\"]', '2023-01-28 02:29:20', '2023-01-28 02:29:20', 'pOnLTvUxyvhPPhmPk5Y4ZI', ''),
(23, '400 W Lincolnway', NULL, NULL, 'Cheyenne', '82001', 'US', 'WY', '[\"400 W Lincolnway\",\"Cheyenne, WY 82001\"]', '2023-01-28 02:29:46', '2023-01-28 02:29:46', 'gu75j4dFkqLpYkf9RVkVKB', ''),
(24, '1401 W Lincolnway', NULL, NULL, 'Cheyenne', '82001', 'US', 'WY', '[\"1401 W Lincolnway\",\"Cheyenne, WY 82001\"]', '2023-01-28 02:29:58', '2023-01-28 02:29:58', '0X8DdxyYLYJXZzJK9ZctCg', ''),
(25, '118 E 17th St', NULL, NULL, 'Cheyenne', '82001', 'US', 'WY', '[\"118 E 17th St\",\"Cheyenne, WY 82001\"]', '2023-01-28 02:30:10', '2023-01-28 02:30:10', '8Y6bGpqCo9uxKtwLXAoIAt', ''),
(26, '115 W 15th St', NULL, NULL, 'Cheyenne', '82001', 'US', 'WY', '[\"115 W 15th St\",\"Cheyenne, WY 82001\"]', '2023-01-28 02:30:20', '2023-01-28 02:30:20', 'bsz2AHrMnN0XefkuYhhj0o', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_24_105427_create_business_table', 1),
(6, '2023_01_24_112601_create_category_table', 2),
(7, '2023_01_24_112727_create_business_category_table', 3),
(8, '2023_01_24_112848_create_location_table', 4),
(9, '2023_01_24_153824_add_business_id_to_location_table', 5),
(10, '2023_01_24_154554_create_transaction_table', 6),
(11, '2023_01_24_154717_create_business_transaction_table', 6),
(12, '2023_01_24_155913_update_price_column_to_business_table', 7),
(13, '2023_01_24_160444_update_columns_tolocation_table', 8),
(14, '2023_01_25_013052_create_photo_table', 9),
(15, '2023_01_25_013752_create_hours_table', 10),
(16, '2023_01_25_014949_add_deleted_at_to_business_table', 11),
(17, '2023_01_25_022920_add_cross_streets_to_location_table', 12),
(18, '2023_01_25_034827_add_business_id_to_hours_table', 13),
(19, '2023_01_26_170336_ad_is_claimed_to_business_table', 14),
(20, '2023_01_26_214747_add_image_url_to_users_table', 15),
(21, '2023_01_28_092823_update_is_claimed_to_business_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Delivery', NULL, NULL),
(2, 'Pickup', NULL, NULL),
(3, 'Dine In', NULL, NULL),
(4, 'Takeout', NULL, NULL),
(5, 'Reservation', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_category`
--
ALTER TABLE `business_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_transaction`
--
ALTER TABLE `business_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_category`
--
ALTER TABLE `business_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `business_transaction`
--
ALTER TABLE `business_transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
