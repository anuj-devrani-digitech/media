-- CreateTable
CREATE TABLE "address_city" (
    "city_id" SERIAL NOT NULL,
    "city_name" VARCHAR(150),
    "state_id" INTEGER,

    CONSTRAINT "address_city_pkey" PRIMARY KEY ("city_id")
);

-- CreateTable
CREATE TABLE "address_state" (
    "state_id" SERIAL NOT NULL,
    "state" VARCHAR(100),

    CONSTRAINT "address_state_pkey" PRIMARY KEY ("state_id")
);

-- CreateTable
CREATE TABLE "amenities" (
    "amenity_id" SERIAL NOT NULL,
    "icon_path" VARCHAR(255),
    "amentity_name" VARCHAR(150),
    "is_active" INTEGER NOT NULL,

    CONSTRAINT "amenities_pkey" PRIMARY KEY ("amenity_id")
);

-- CreateTable
CREATE TABLE "awards" (
    "award_id" SERIAL NOT NULL,
    "name" VARCHAR(160),
    "awardee" VARCHAR(80),
    "year" INTEGER,
    "status" SMALLINT,
    "website_id" INTEGER,
    "sorting_index" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "awards_pkey" PRIMARY KEY ("award_id")
);

-- CreateTable
CREATE TABLE "awards_preview" (
    "award_id" SERIAL NOT NULL,
    "name" VARCHAR(160) NOT NULL,
    "awardee" VARCHAR(80),
    "year" INTEGER,
    "status" SMALLINT,
    "website_id" INTEGER,
    "sorting_index" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,

    CONSTRAINT "awards_preview_pkey" PRIMARY KEY ("award_id")
);

-- CreateTable
CREATE TABLE "bed_types" (
    "bed_type_id" SERIAL NOT NULL,
    "bed_type" VARCHAR(50),
    "is_active" SMALLINT,

    CONSTRAINT "bed_types_pkey" PRIMARY KEY ("bed_type_id")
);

-- CreateTable
CREATE TABLE "brand_resorts" (
    "brand_resort_id" SERIAL NOT NULL,
    "brand_id" INTEGER,
    "resort_name" VARCHAR(100),
    "resort_code" VARCHAR(50),
    "resort_location" VARCHAR(100) NOT NULL,
    "is_active" SMALLINT,

    CONSTRAINT "brand_resorts_pkey" PRIMARY KEY ("brand_resort_id")
);

-- CreateTable
CREATE TABLE "brands" (
    "brand_id" SERIAL NOT NULL,
    "brand_name" VARCHAR(100),

    CONSTRAINT "brands_pkey" PRIMARY KEY ("brand_id")
);

-- CreateTable
CREATE TABLE "collateral_heads" (
    "id" SERIAL NOT NULL,
    "collateral_name" VARCHAR(150),
    "sorting_index" INTEGER,
    "website_id" INTEGER,

    CONSTRAINT "collateral_heads_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "collaterals" (
    "collateral_id" SERIAL NOT NULL,
    "heading" VARCHAR(100),
    "title" VARCHAR(200),
    "description" TEXT,
    "pdf_url" VARCHAR(255),
    "status" SMALLINT,
    "website_id" INTEGER,
    "sorting_index" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "collateral_head_id" INTEGER,

    CONSTRAINT "collaterals_pkey" PRIMARY KEY ("collateral_id")
);

-- CreateTable
CREATE TABLE "collaterals_preview" (
    "collateral_id" SERIAL NOT NULL,
    "heading" VARCHAR(100),
    "title" VARCHAR(200),
    "description" TEXT,
    "pdf_url" VARCHAR(255),
    "status" SMALLINT,
    "website_id" INTEGER,
    "sorting_index" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "collateral_head_id" INTEGER,
    "created_by" INTEGER,

    CONSTRAINT "collaterals_preview_pkey" PRIMARY KEY ("collateral_id")
);

-- CreateTable
CREATE TABLE "enquiry_status" (
    "enquiry_status_id" SERIAL NOT NULL,
    "status" VARCHAR(160),
    "sorting_index" INTEGER,
    "is_active" SMALLINT,

    CONSTRAINT "enquiry_status_pkey" PRIMARY KEY ("enquiry_status_id")
);

-- CreateTable
CREATE TABLE "enquiry_types" (
    "enquiry_type_id" SERIAL NOT NULL,
    "enquiry_type" VARCHAR(50),
    "is_active" SMALLINT,

    CONSTRAINT "enquiry_types_pkey" PRIMARY KEY ("enquiry_type_id")
);

-- CreateTable
CREATE TABLE "global_settings" (
    "global_setting_id" SERIAL NOT NULL,
    "setting_name" VARCHAR(250),
    "setting_description" TEXT,
    "setting_value" TEXT,
    "show_to_user" SMALLINT,
    "created_on" TIMESTAMP(6),
    "website_id" INTEGER,

    CONSTRAINT "global_settings_pkey" PRIMARY KEY ("global_setting_id")
);

-- CreateTable
CREATE TABLE "html_elements" (
    "html_element_id" SERIAL NOT NULL,
    "name" VARCHAR(50),
    "code" VARCHAR(50),

    CONSTRAINT "html_elements_pkey" PRIMARY KEY ("html_element_id")
);

-- CreateTable
CREATE TABLE "media_albums" (
    "media_album_id" SERIAL NOT NULL,
    "media_album" VARCHAR(250),
    "website_id" INTEGER,
    "created_on" TIMESTAMP(6),
    "created_by" INTEGER,

    CONSTRAINT "media_albums_pkey" PRIMARY KEY ("media_album_id")
);

-- CreateTable
CREATE TABLE "media_files" (
    "media_file_id" SERIAL NOT NULL,
    "media_file_path" TEXT,
    "media_title" VARCHAR(250),
    "website_id" INTEGER,
    "media_album_id" INTEGER,
    "media_type_id" INTEGER,
    "seo_tags" TEXT,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6),
    "is_media_album" SMALLINT,
    "media_caption" TEXT,

    CONSTRAINT "media_files_pkey" PRIMARY KEY ("media_file_id")
);

-- CreateTable
CREATE TABLE "media_types" (
    "media_type_id" SERIAL NOT NULL,
    "media_type" VARCHAR(20),
    "media_type_code" VARCHAR(10),
    "is_active" SMALLINT DEFAULT 1,

    CONSTRAINT "media_types_pkey" PRIMARY KEY ("media_type_id")
);

-- CreateTable
CREATE TABLE "navigation_item" (
    "navigation_item_id" SERIAL NOT NULL,
    "navigation_item" VARCHAR(150),
    "navigation_url" VARCHAR(255),
    "parent_id" INTEGER,
    "sorting_index" INTEGER,
    "app_form_id" INTEGER,
    "is_active" SMALLINT,
    "navigation_icon" VARCHAR(255),
    "only_for_superadmin" SMALLINT,

    CONSTRAINT "navigation_item_pkey" PRIMARY KEY ("navigation_item_id")
);

-- CreateTable
CREATE TABLE "newsletters" (
    "news_letter_id" SERIAL NOT NULL,
    "website_id" INTEGER NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    "created_on" TIMESTAMP(6),
    "last_requested_on" TIMESTAMP(6),

    CONSTRAINT "newslatters_pkey" PRIMARY KEY ("news_letter_id")
);

-- CreateTable
CREATE TABLE "page_section_detail_data" (
    "id" SERIAL NOT NULL,
    "page_section_detail_form_field_id" INTEGER,
    "data" TEXT,
    "created_by" INTEGER,
    "created_on" DATE,
    "created_IP" VARCHAR(150),
    "created_UserAgent" VARCHAR(150),
    "last_updated_by" INTEGER,
    "last_updated_on" DATE,
    "last_updated_IP" VARCHAR(50),
    "last_updated_UserAgent" VARCHAR(150),
    "img_alt_tag" VARCHAR(170)
);

-- CreateTable
CREATE TABLE "page_section_detail_form_fields" (
    "id" SERIAL NOT NULL,
    "page_section_id" INTEGER,
    "html_element_id" INTEGER,
    "field_label" VARCHAR(255),
    "is_required" BOOLEAN,
    "sorting_index" INTEGER,
    "field_label_code" VARCHAR(150),
    "image_dimension" VARCHAR(100),
    "field_max_length" INTEGER,

    CONSTRAINT "page_section_detail_form_fields_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "page_section_detail_preview_data" (
    "id" SERIAL NOT NULL,
    "page_section_detail_form_field_id" INTEGER,
    "data" TEXT,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6),
    "created_IP" VARCHAR(150),
    "created_UserAgent" VARCHAR(150),
    "last_updated_by" INTEGER,
    "last_updated_on" DATE,
    "last_updated_IP" VARCHAR(150),
    "last_updated_UserAgent" VARCHAR(150),

    CONSTRAINT "page_section_detail_preview_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "page_sections" (
    "page_section_id" SERIAL NOT NULL,
    "page_id" INTEGER,
    "section_title" VARCHAR(255),
    "sorting_index" INTEGER,
    "section_description" VARCHAR(255),
    "section_label" VARCHAR(255),
    "section_code" VARCHAR(150),

    CONSTRAINT "page_sections_pkey" PRIMARY KEY ("page_section_id")
);

-- CreateTable
CREATE TABLE "page_sub_section_data" (
    "id" SERIAL NOT NULL,
    "page_sub_section_form_field_id" INTEGER,
    "data" TEXT,
    "created_by" INTEGER,
    "created_on" DATE,
    "created_IP" VARCHAR(50),
    "created_UserAgent" VARCHAR(150),
    "last_updated_by" INTEGER,
    "last_updated_on" DATE,
    "last_updated_IP" VARCHAR(50),
    "last_updated_UserAgent" VARCHAR(150),
    "img_alt_tag" VARCHAR(170),

    CONSTRAINT "page_sub_section_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "page_sub_section_form_fields" (
    "id" SERIAL NOT NULL,
    "page_sub_section_id" INTEGER,
    "html_element_id" INTEGER,
    "field_title" VARCHAR(255),
    "is_required" BIT(1),
    "is_title" BIT(1),
    "sorting_index" INTEGER,
    "field_title_code" VARCHAR(150),
    "image_dimension" VARCHAR(100),
    "field_max_length" INTEGER
);

-- CreateTable
CREATE TABLE "page_sub_section_preview_data" (
    "id" SERIAL NOT NULL,
    "page_sub_section_form_field_id" INTEGER,
    "data" TEXT,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6),
    "created_IP" VARCHAR(150),
    "created_UserAgent" VARCHAR(150),
    "last_updated_by" INTEGER,
    "last_updated_on" DATE,
    "last_updated_IP" VARCHAR(150),
    "last_updated_UserAgent" VARCHAR(150),

    CONSTRAINT "page_sub_section_preview_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "page_sub_sections" (
    "id" SERIAL NOT NULL,
    "page_section_id" INTEGER,
    "parent_id" INTEGER,
    "maximum_records_allowed" INTEGER,
    "sorting_index" INTEGER,
    "sub_section_title" VARCHAR(250),
    "is_deletable" BOOLEAN,
    "sub_section_title_code" VARCHAR(150),
    "is_dropdown" BOOLEAN,
    "section_id_dropdownref" INTEGER,

    CONSTRAINT "page_sub_sections_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pages" (
    "website_page_id" SERIAL NOT NULL,
    "page_title" VARCHAR(255),
    "slug" TEXT,
    "meta_title" VARCHAR(255),
    "meta_description" TEXT,
    "meta_keyword" TEXT,
    "page_template_code" VARCHAR(255),
    "website_id" INTEGER,
    "sorting_index" INTEGER,
    "page_code" VARCHAR(100),
    "breadcrumb_text" VARCHAR(100),
    "is_active" SMALLINT,

    CONSTRAINT "pages_pkey" PRIMARY KEY ("website_page_id")
);

-- CreateTable
CREATE TABLE "properties" (
    "property_id" SERIAL NOT NULL,
    "website_id" INTEGER,
    "property_name" VARCHAR(255),
    "property_type_id" INTEGER,
    "unit_plan_path" VARCHAR(255),
    "property_description" TEXT,
    "occupancy1_adult" INTEGER,
    "occupancy1_child" INTEGER,
    "occupancy2_adult" INTEGER,
    "occupancy2_child" INTEGER,
    "area_sqm" VARCHAR(50),
    "private_pool_size" VARCHAR(50),
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6),
    "is_active" SMALLINT,
    "sorting_index" INTEGER,
    "tag_line" TEXT,
    "inner_banner_image" VARCHAR(255),
    "slug" TEXT,
    "keywords" TEXT,
    "meta_title" VARCHAR(70),
    "meta_description" VARCHAR(170),
    "inner_banner_alt_tag" VARCHAR(170),
    "view_360_link" VARCHAR(255),

    CONSTRAINT "properties_pkey" PRIMARY KEY ("property_id")
);

-- CreateTable
CREATE TABLE "properties_preview" (
    "property_id" SERIAL NOT NULL,
    "website_id" INTEGER,
    "property_name" VARCHAR(255),
    "property_type_id" INTEGER,
    "unit_plan_path" VARCHAR(255),
    "property_description" TEXT,
    "occupancy1_adult" INTEGER,
    "occupancy1_child" INTEGER,
    "occupancy2_adult" INTEGER,
    "occupancy2_child" INTEGER,
    "area_sqm" VARCHAR(50),
    "private_pool_size" VARCHAR(50),
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "is_active" SMALLINT,
    "sorting_index" INTEGER,
    "tag_line" TEXT,
    "inner_banner_image" VARCHAR(255),
    "slug" VARCHAR,
    "keywords" TEXT,
    "meta_title" VARCHAR(70),
    "meta_description" VARCHAR(170),
    "inner_banner_alt_tag" VARCHAR(170),
    "view_360_link" VARCHAR(255),

    CONSTRAINT "properties_preview_pkey" PRIMARY KEY ("property_id")
);

-- CreateTable
CREATE TABLE "property_amenities" (
    "property_amenity_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "amenity_id" INTEGER,
    "is_active" SMALLINT,

    CONSTRAINT "property_amenities_pkey" PRIMARY KEY ("property_amenity_id")
);

-- CreateTable
CREATE TABLE "property_amenities_preview" (
    "property_amenity_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "amenity_id" INTEGER,
    "is_active" SMALLINT,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "property_amenities_preview_pkey" PRIMARY KEY ("property_amenity_id")
);

-- CreateTable
CREATE TABLE "property_beds" (
    "property_bed_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "bed_type_id" INTEGER,
    "bed_count" INTEGER,

    CONSTRAINT "property_beds_pkey" PRIMARY KEY ("property_bed_id")
);

-- CreateTable
CREATE TABLE "property_beds_preview" (
    "property_bed_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "bed_type_id" INTEGER,
    "bed_count" INTEGER,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "property_beds_preview_pkey" PRIMARY KEY ("property_bed_id")
);

-- CreateTable
CREATE TABLE "property_footnotes" (
    "property_footnote_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "footnotes" VARCHAR(210),
    "is_active" SMALLINT,

    CONSTRAINT "property_footnotes_pkey" PRIMARY KEY ("property_footnote_id")
);

-- CreateTable
CREATE TABLE "property_images" (
    "property_imgae_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "image_path" VARCHAR(255),
    "image_title" VARCHAR(150),
    "is_active" SMALLINT,
    "sorting_index" INTEGER,
    "size" INTEGER,
    "property_image_alt_tag" VARCHAR(170),

    CONSTRAINT "property_images_pkey" PRIMARY KEY ("property_imgae_id")
);

-- CreateTable
CREATE TABLE "property_images_preview" (
    "property_image_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "image_path" VARCHAR(255),
    "image_title" VARCHAR(150),
    "is_active" SMALLINT,
    "sorting_index" INTEGER,
    "size" INTEGER,
    "property_image_alt_tag" VARCHAR(170),
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "original_property_image_id" INTEGER,

    CONSTRAINT "property_images_preview_pkey" PRIMARY KEY ("property_image_id")
);

-- CreateTable
CREATE TABLE "property_occupancy" (
    "property_occupancy_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "adult_count" INTEGER,
    "child_count" INTEGER,

    CONSTRAINT "property_occupancy_pkey" PRIMARY KEY ("property_occupancy_id")
);

-- CreateTable
CREATE TABLE "property_occupancy_preview" (
    "property_occupancy_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "adult_count" INTEGER,
    "child_count" INTEGER,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "property_occupancy_preview_pkey" PRIMARY KEY ("property_occupancy_id")
);

-- CreateTable
CREATE TABLE "property_sign_features" (
    "property_sign_feature_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "sign_feature" VARCHAR(255),
    "is_active" SMALLINT,

    CONSTRAINT "property_sign_features_pkey" PRIMARY KEY ("property_sign_feature_id")
);

-- CreateTable
CREATE TABLE "property_sign_features_preview" (
    "property_sign_feature_id" SERIAL NOT NULL,
    "property_id" INTEGER,
    "sign_feature" VARCHAR(255),
    "is_active" SMALLINT,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "property_sign_features_preview_pkey" PRIMARY KEY ("property_sign_feature_id")
);

-- CreateTable
CREATE TABLE "property_types" (
    "property_type_id" SERIAL NOT NULL,
    "property_type" VARCHAR(100),
    "is_active" INTEGER,

    CONSTRAINT "property_types_pkey" PRIMARY KEY ("property_type_id")
);

-- CreateTable
CREATE TABLE "restaurant_details" (
    "restaurant_detail_id" SERIAL NOT NULL,
    "restaurant_id" INTEGER,
    "heading" VARCHAR(255),
    "description" TEXT,
    "image_path" VARCHAR(255),
    "img_alt_tag" VARCHAR(170),

    CONSTRAINT "restaurant_details_pkey" PRIMARY KEY ("restaurant_detail_id")
);

-- CreateTable
CREATE TABLE "restaurant_details_preview" (
    "restaurant_detail_id" SERIAL NOT NULL,
    "restaurant_id" INTEGER,
    "heading" VARCHAR(255),
    "description" TEXT,
    "image_path" VARCHAR(255),
    "img_alt_tag" VARCHAR(170),
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "original_restaurant_detail_id" INTEGER,
    "original_restaurant_id" INTEGER,

    CONSTRAINT "restaurant_details_preview_pkey" PRIMARY KEY ("restaurant_detail_id")
);

-- CreateTable
CREATE TABLE "restaurant_features" (
    "feature_id" SERIAL NOT NULL,
    "restaurant_detail_id" INTEGER,
    "features" VARCHAR(255),
    "is_active" SMALLINT,

    CONSTRAINT "restaurant_features_pkey" PRIMARY KEY ("feature_id")
);

-- CreateTable
CREATE TABLE "restaurant_features_preview" (
    "feature_id" SERIAL NOT NULL,
    "restaurant_detail_id" INTEGER,
    "features" VARCHAR(255),
    "is_active" SMALLINT,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "restaurant_features_preview_pkey" PRIMARY KEY ("feature_id")
);

-- CreateTable
CREATE TABLE "restaurant_menu" (
    "restaurant_menu_id" SERIAL NOT NULL,
    "restaurant_id" INTEGER,
    "menu_name" VARCHAR(100),
    "menu_pdf" VARCHAR(255),

    CONSTRAINT "restaurant_menu_pkey" PRIMARY KEY ("restaurant_menu_id")
);

-- CreateTable
CREATE TABLE "restaurant_menu_preview" (
    "restaurant_menu_id" SERIAL NOT NULL,
    "restaurant_id" INTEGER,
    "menu_name" VARCHAR(100),
    "menu_pdf" VARCHAR(255),
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "restaurant_menu_preview_pkey" PRIMARY KEY ("restaurant_menu_id")
);

-- CreateTable
CREATE TABLE "restaurant_tags" (
    "restaurant_tag_id" SERIAL NOT NULL,
    "restaurant_tag" VARCHAR(255),
    "is_active" SMALLINT,
    "restaurant_id" INTEGER,

    CONSTRAINT "restaurant_tags_pkey" PRIMARY KEY ("restaurant_tag_id")
);

-- CreateTable
CREATE TABLE "restaurant_tags_preview" (
    "restaurant_tag_id" SERIAL NOT NULL,
    "restaurant_tag" VARCHAR(255),
    "is_active" SMALLINT,
    "restaurant_id" INTEGER,
    "created_on" TIMESTAMP(6),
    "created_by" INTEGER,

    CONSTRAINT "restaurant_tags_preview_pkey" PRIMARY KEY ("restaurant_tag_id")
);

-- CreateTable
CREATE TABLE "restaurant_types" (
    "restaurant_type_id" SERIAL NOT NULL,
    "restaurant_type" VARCHAR(255),
    "is_active" SMALLINT,
    "color_code" VARCHAR(50),

    CONSTRAINT "restaurant_types_pkey" PRIMARY KEY ("restaurant_type_id")
);

-- CreateTable
CREATE TABLE "restaurants" (
    "restaurant_id" SERIAL NOT NULL,
    "restaurant_name" VARCHAR(255),
    "restaurant_type_id" INTEGER,
    "website_id" INTEGER,
    "restaurant_image" VARCHAR(255),
    "restaurant_menu_image" VARCHAR(255),
    "restaurant_description" TEXT,
    "created_on" TIMESTAMP(6),
    "created_by" INTEGER,
    "is_active" SMALLINT,
    "restaurant_tagline" TEXT,
    "sorting_index" INTEGER,
    "restaurant_icon" VARCHAR(255),
    "inner_banner_image" VARCHAR(255),
    "slug" TEXT,
    "keywords" TEXT,
    "meta_title" VARCHAR(70),
    "meta_description" VARCHAR(170),
    "is_menu_pdf" SMALLINT,
    "inner_banner_alt_tag" VARCHAR(170),
    "image_alt_tag" VARCHAR(170),
    "highligts_title" VARCHAR(100),
    "highligts_description" TEXT,
    "chef_signature" VARCHAR(255),
    "left_image" VARCHAR(255),
    "right_image" VARCHAR(255),
    "chef_signature_alt_tag" VARCHAR(170),
    "left_image_alt_tag" VARCHAR(170),
    "right_image_alt_tag" VARCHAR(170),
    "restaurant_logo_alt_tag" VARCHAR(170),

    CONSTRAINT "restaurants_pkey" PRIMARY KEY ("restaurant_id")
);

-- CreateTable
CREATE TABLE "restaurants_preview" (
    "restaurant_id" SERIAL NOT NULL,
    "restaurant_name" VARCHAR(255),
    "restaurant_type_id" INTEGER,
    "website_id" INTEGER,
    "restaurant_image" VARCHAR(255),
    "restaurant_menu_image" VARCHAR(255),
    "restaurant_description" TEXT,
    "created_on" TIMESTAMP(6),
    "created_by" INTEGER,
    "is_active" SMALLINT,
    "restaurant_tagline" TEXT,
    "sorting_index" INTEGER,
    "restaurant_icon" VARCHAR(255),
    "inner_banner_image" VARCHAR(255),
    "slug" TEXT,
    "keywords" TEXT,
    "meta_title" VARCHAR(70),
    "meta_description" VARCHAR(170),
    "is_menu_pdf" SMALLINT,
    "inner_banner_alt_tag" VARCHAR(170),
    "image_alt_tag" VARCHAR(170),
    "highligts_title" VARCHAR(100),
    "highligts_description" TEXT,
    "chef_signature" VARCHAR(255),
    "left_image" VARCHAR(255),
    "right_image" VARCHAR(255),
    "chef_signature_alt_tag" VARCHAR(170),
    "left_image_alt_tag" VARCHAR(170),
    "right_image_alt_tag" VARCHAR(170),
    "restaurant_logo_alt_tag" VARCHAR(170),

    CONSTRAINT "restaurants_preview_pkey" PRIMARY KEY ("restaurant_id")
);

-- CreateTable
CREATE TABLE "user_assigned_roles" (
    "user_assigned_role_id" SERIAL NOT NULL,
    "user_id" INTEGER,
    "user_role_id" INTEGER,
    "website_id" INTEGER,
    "assigned_by" INTEGER,
    "assigned_on" TIMESTAMP(6),

    CONSTRAINT "user_assigned_roles_pkey" PRIMARY KEY ("user_assigned_role_id")
);

-- CreateTable
CREATE TABLE "user_role" (
    "user_role_id" SERIAL NOT NULL,
    "user_role" VARCHAR(50),
    "is_admin" SMALLINT,
    "is_super_admin" SMALLINT,
    "is_active" SMALLINT,
    "created_on" TIMESTAMP(6),
    "last_edited_on" TIMESTAMP(6),

    CONSTRAINT "user_role_pkey" PRIMARY KEY ("user_role_id")
);

-- CreateTable
CREATE TABLE "user_role_navigations" (
    "user_role_navigation_id" SERIAL NOT NULL,
    "user_role_id" INTEGER,
    "navigation_item_id" INTEGER,
    "is_active" SMALLINT,

    CONSTRAINT "user_role_navigations_pkey" PRIMARY KEY ("user_role_navigation_id")
);

-- CreateTable
CREATE TABLE "users" (
    "user_id" SERIAL NOT NULL,
    "user_name" VARCHAR(150),
    "password" VARCHAR(255),
    "phone" VARCHAR(15),
    "email" VARCHAR(250),
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6),
    "is_active" SMALLINT,

    CONSTRAINT "users_pkey" PRIMARY KEY ("user_id")
);

-- CreateTable
CREATE TABLE "website_enquiries" (
    "enquiry_id" SERIAL NOT NULL,
    "website_id" INTEGER,
    "enquiry_type_id" INTEGER,
    "name" VARCHAR(50),
    "email" VARCHAR(255),
    "phone" VARCHAR(20),
    "message" TEXT,
    "datetime" TIMESTAMP(6),
    "subject" TEXT,
    "resort_id" INTEGER,
    "is_all_resorts" SMALLINT,
    "status_id" INTEGER,
    "user_id" INTEGER,

    CONSTRAINT "website_enquiries_pkey" PRIMARY KEY ("enquiry_id")
);

-- CreateTable
CREATE TABLE "website_menu" (
    "menu_id" SERIAL NOT NULL,
    "website_id" INTEGER,
    "menu_text" VARCHAR(150),
    "menu_level" INTEGER,
    "parent_id" INTEGER,
    "sorting_index" INTEGER,
    "slug" TEXT,
    "is_active" SMALLINT,
    "page_id" INTEGER,

    CONSTRAINT "website_menu_pkey" PRIMARY KEY ("menu_id")
);

-- CreateTable
CREATE TABLE "website_navigations" (
    "id" INTEGER NOT NULL,
    "website_id" INTEGER,
    "navigation_item_id" INTEGER,

    CONSTRAINT "website_navigations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "website_offers" (
    "website_offer_id" SERIAL NOT NULL,
    "website_id" INTEGER,
    "offer_name" VARCHAR(150),
    "description" TEXT,
    "brand_resort_id" INTEGER,
    "discount_percent" DECIMAL(5,2),
    "offer_image" TEXT,
    "website_url" TEXT,
    "terms_conditions" TEXT,
    "highlights" TEXT,
    "offer_start_date" DATE,
    "offer_end_date" DATE,
    "is_featured_to_brand" SMALLINT,
    "is_featured_to_resort" SMALLINT,
    "offer_short_link" VARCHAR(50),
    "created_on" TIMESTAMP(6),
    "created_by" INTEGER,
    "updated_on" TIMESTAMP(6),
    "updated_by" INTEGER,
    "is_active" SMALLINT,
    "discount_text" VARCHAR(100),
    "sorting_index" INTEGER,
    "inner_banner_image" VARCHAR(255),
    "slug" TEXT,
    "keywords" TEXT,
    "meta_title" VARCHAR(70),
    "meta_description" VARCHAR(170),
    "offer_image_alt_tag" VARCHAR(170),
    "inner_banner_alt_tag" VARCHAR(170),
    "brand_sorting_index" INTEGER,

    CONSTRAINT "website_offers_pkey" PRIMARY KEY ("website_offer_id")
);

-- CreateTable
CREATE TABLE "website_offers_preview" (
    "website_offer_id" SERIAL NOT NULL,
    "website_id" INTEGER NOT NULL,
    "offer_name" VARCHAR(150) NOT NULL,
    "description" TEXT,
    "brand_resort_id" INTEGER,
    "discount_percent" DECIMAL(5,2),
    "offer_image" TEXT,
    "website_url" TEXT,
    "terms_conditions" TEXT,
    "highlights" TEXT,
    "offer_start_date" DATE,
    "offer_end_date" DATE,
    "is_featured_to_brand" SMALLINT,
    "is_featured_to_resort" SMALLINT,
    "offer_short_link" VARCHAR(50),
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "updated_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "updated_by" INTEGER,
    "is_active" SMALLINT,
    "discount_text" VARCHAR(100),
    "sorting_index" INTEGER,
    "inner_banner_image" VARCHAR(255),
    "slug" VARCHAR,
    "keywords" TEXT,
    "meta_title" VARCHAR(70),
    "meta_description" VARCHAR(170),
    "offer_image_alt_tag" VARCHAR(170),
    "inner_banner_alt_tag" VARCHAR(170),
    "brand_sorting_index" INTEGER,

    CONSTRAINT "website_offers_preview_pkey" PRIMARY KEY ("website_offer_id")
);

-- CreateTable
CREATE TABLE "website_press_release_resorts" (
    "website_press_release_resort_id" SERIAL NOT NULL,
    "brand_resort_id" INTEGER,
    "website_press_release_id" INTEGER,

    CONSTRAINT "website_press_release_resorts_pkey" PRIMARY KEY ("website_press_release_resort_id")
);

-- CreateTable
CREATE TABLE "website_press_release_resorts_preview" (
    "website_press_release_resort_id" SERIAL NOT NULL,
    "brand_resort_id" INTEGER,
    "website_press_release_id" INTEGER,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "website_press_release_resorts_preview_pkey" PRIMARY KEY ("website_press_release_resort_id")
);

-- CreateTable
CREATE TABLE "website_press_releases" (
    "website_press_release_id" SERIAL NOT NULL,
    "image_path" VARCHAR(255),
    "title" VARCHAR(255),
    "date" DATE,
    "time" TIME(6),
    "description" TEXT,
    "tags" TEXT,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6),
    "last_modified_by" INTEGER,
    "last_modified_on" TIMESTAMP(6),
    "is_published" SMALLINT,
    "website_id" INTEGER,
    "published_date" TIMESTAMP(6),
    "slug" TEXT,
    "sorting_index" INTEGER,
    "keywords" TEXT,
    "meta_title" VARCHAR(70),
    "meta_description" VARCHAR(170),
    "image_alt_tag" VARCHAR(170),
    "brand_sorting_index" INTEGER,

    CONSTRAINT "website_press_releases_pkey" PRIMARY KEY ("website_press_release_id")
);

-- CreateTable
CREATE TABLE "website_press_releases_preview" (
    "website_press_release_id" SERIAL NOT NULL,
    "image_path" VARCHAR(255),
    "title" VARCHAR(255),
    "date" DATE,
    "time" TIME(6),
    "description" TEXT,
    "tags" TEXT,
    "created_by" INTEGER,
    "created_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "last_modified_by" INTEGER,
    "last_modified_on" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    "is_published" SMALLINT,
    "website_id" INTEGER,
    "published_date" TIMESTAMP(6),
    "slug" VARCHAR,
    "sorting_index" INTEGER,
    "keywords" TEXT,
    "meta_title" VARCHAR(70),
    "meta_description" VARCHAR(170),
    "image_alt_tag" VARCHAR(170),
    "brand_sorting_index" INTEGER,

    CONSTRAINT "website_press_releases_preview_pkey" PRIMARY KEY ("website_press_release_id")
);

-- CreateTable
CREATE TABLE "websites" (
    "website_id" SERIAL NOT NULL,
    "website" VARCHAR(100),
    "description" TEXT,
    "website_image" TEXT,
    "brand_id" INTEGER,
    "brand_resort_id" INTEGER,
    "website_folder" VARCHAR NOT NULL,
    "website_url" VARCHAR,
    "website_code" VARCHAR(50),
    "sorting_index" INTEGER,

    CONSTRAINT "websites_pkey" PRIMARY KEY ("website_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "page_section_detail_data_id_key" ON "page_section_detail_data"("id");

-- CreateIndex
CREATE UNIQUE INDEX "page_sub_section_form_fields_id_key" ON "page_sub_section_form_fields"("id");

-- CreateIndex
CREATE UNIQUE INDEX "properties_preview_slug_key" ON "properties_preview"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "offer_unique_slug" ON "website_offers"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "website_offers_preview_slug_key" ON "website_offers_preview"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "press_release_slug_unique" ON "website_press_releases"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "website_press_releases_preview_slug_key" ON "website_press_releases_preview"("slug");

-- AddForeignKey
ALTER TABLE "address_city" ADD CONSTRAINT "address_city_state_id_fkey" FOREIGN KEY ("state_id") REFERENCES "address_state"("state_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "brand_resorts" ADD CONSTRAINT "brand_resorts_brand_id_fkey" FOREIGN KEY ("brand_id") REFERENCES "brands"("brand_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "media_files" ADD CONSTRAINT "media_files_media_album_id_fkey" FOREIGN KEY ("media_album_id") REFERENCES "media_albums"("media_album_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "media_files" ADD CONSTRAINT "media_files_media_type_id_fkey" FOREIGN KEY ("media_type_id") REFERENCES "media_types"("media_type_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "media_files" ADD CONSTRAINT "media_files_website_id_fkey" FOREIGN KEY ("website_id") REFERENCES "websites"("website_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "user_assigned_roles" ADD CONSTRAINT "user_assigned_roles_user_role_id_fkey" FOREIGN KEY ("user_role_id") REFERENCES "user_role"("user_role_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "user_assigned_roles" ADD CONSTRAINT "user_assigned_roles_website_id_fkey" FOREIGN KEY ("website_id") REFERENCES "websites"("website_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "user_role_navigations" ADD CONSTRAINT "user_role_navigations_navigation_item_id_fkey" FOREIGN KEY ("navigation_item_id") REFERENCES "navigation_item"("navigation_item_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "user_role_navigations" ADD CONSTRAINT "user_role_navigations_user_role_id_fkey" FOREIGN KEY ("user_role_id") REFERENCES "user_role"("user_role_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "website_enquiries" ADD CONSTRAINT "website_enquiries_enquiry_type_id_fkey" FOREIGN KEY ("enquiry_type_id") REFERENCES "enquiry_types"("enquiry_type_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "website_enquiries" ADD CONSTRAINT "website_enquiries_website_id_fkey" FOREIGN KEY ("website_id") REFERENCES "websites"("website_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "website_press_releases" ADD CONSTRAINT "website_press_releases_website_id_fkey" FOREIGN KEY ("website_id") REFERENCES "websites"("website_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "websites" ADD CONSTRAINT "websites_brand_id_fkey" FOREIGN KEY ("brand_id") REFERENCES "brands"("brand_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "websites" ADD CONSTRAINT "websites_brand_resort_id_fkey" FOREIGN KEY ("brand_resort_id") REFERENCES "brand_resorts"("brand_resort_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
