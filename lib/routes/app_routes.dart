import 'package:flutter/material.dart';
import 'package:kanza_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:kanza_s_application1/presentation/product_tour_one_screen/product_tour_one_screen.dart';
import 'package:kanza_s_application1/presentation/product_tour_two_screen/product_tour_two_screen.dart';
import 'package:kanza_s_application1/presentation/product_tour_three_screen/product_tour_three_screen.dart';
import 'package:kanza_s_application1/presentation/featured_estates_screen/featured_estates_screen.dart';
import 'package:kanza_s_application1/presentation/real_estates_list_by_category_screen/real_estates_list_by_category_screen.dart';
import 'package:kanza_s_application1/presentation/top_locations_screen/top_locations_screen.dart';
import 'package:kanza_s_application1/presentation/top_locations_location_detail_screen/top_locations_location_detail_screen.dart';
import 'package:kanza_s_application1/presentation/top_agents_screen/top_agents_screen.dart';
import 'package:kanza_s_application1/presentation/top_agents_profile_detail_tab_container_screen/top_agents_profile_detail_tab_container_screen.dart';
import 'package:kanza_s_application1/presentation/review_empty_screen/review_empty_screen.dart';
import 'package:kanza_s_application1/presentation/review_fill_screen/review_fill_screen.dart';
import 'package:kanza_s_application1/presentation/summary_screen/summary_screen.dart';
import 'package:kanza_s_application1/presentation/form_detail_screen/form_detail_screen.dart';
import 'package:kanza_s_application1/presentation/add_location_screen/add_location_screen.dart';
import 'package:kanza_s_application1/presentation/add_photos_screen/add_photos_screen.dart';
import 'package:kanza_s_application1/presentation/extra_information_screen/extra_information_screen.dart';
import 'package:kanza_s_application1/presentation/login_screen/login_screen.dart';
import 'package:kanza_s_application1/presentation/form_empty_screen/form_empty_screen.dart';
import 'package:kanza_s_application1/presentation/notification_list_tab_container_screen/notification_list_tab_container_screen.dart';
import 'package:kanza_s_application1/presentation/chat_screen/chat_screen.dart';
import 'package:kanza_s_application1/presentation/call_screen/call_screen.dart';
import 'package:kanza_s_application1/presentation/favourite_empty_screen/favourite_empty_screen.dart';
import 'package:kanza_s_application1/presentation/horizontal_screen/horizontal_screen.dart';
import 'package:kanza_s_application1/presentation/register_form_empty_screen/register_form_empty_screen.dart';
import 'package:kanza_s_application1/presentation/form_otp_screen/form_otp_screen.dart';
import 'package:kanza_s_application1/presentation/empty_map_screen/empty_map_screen.dart';
import 'package:kanza_s_application1/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:kanza_s_application1/presentation/all_reviews_tab_container_screen/all_reviews_tab_container_screen.dart';
import 'package:kanza_s_application1/presentation/empty_search_screen/empty_search_screen.dart';
import 'package:kanza_s_application1/presentation/search_result_screen/search_result_screen.dart';
import 'package:kanza_s_application1/presentation/filter_choose_location_screen/filter_choose_location_screen.dart';
import 'package:kanza_s_application1/presentation/result_filter_screen/result_filter_screen.dart';
import 'package:kanza_s_application1/presentation/location_empty_screen/location_empty_screen.dart';
import 'package:kanza_s_application1/presentation/location_choose_location_screen/location_choose_location_screen.dart';
import 'package:kanza_s_application1/presentation/location_fill_screen/location_fill_screen.dart';
import 'package:kanza_s_application1/presentation/preferable_screen/preferable_screen.dart';
import 'package:kanza_s_application1/presentation/preferable_selected_screen/preferable_selected_screen.dart';
import 'package:kanza_s_application1/presentation/payment_empty_tab_container_screen/payment_empty_tab_container_screen.dart';
import 'package:kanza_s_application1/presentation/history_detail_screen/history_detail_screen.dart';
import 'package:kanza_s_application1/presentation/add_review_empty_screen/add_review_empty_screen.dart';
import 'package:kanza_s_application1/presentation/add_review_fill_screen/add_review_fill_screen.dart';
import 'package:kanza_s_application1/presentation/user_empty_screen/user_empty_screen.dart';
import 'package:kanza_s_application1/presentation/edit_form_screen/edit_form_screen.dart';
import 'package:kanza_s_application1/presentation/property_details_screen/property_details_screen.dart';
import 'package:kanza_s_application1/presentation/view_screen/view_screen.dart';
import 'package:kanza_s_application1/presentation/view_on_map_screen/view_on_map_screen.dart';
import 'package:kanza_s_application1/presentation/reviews_tab_container_screen/reviews_tab_container_screen.dart';
import 'package:kanza_s_application1/presentation/reviews_gallery_screen/reviews_gallery_screen.dart';
import 'package:kanza_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:kanza_s_application1/presentation/promotion_screen/promotion_screen.dart';
import 'package:kanza_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String productTourOneScreen = '/product_tour_one_screen';

  static const String productTourTwoScreen = '/product_tour_two_screen';

  static const String productTourThreeScreen = '/product_tour_three_screen';

  static const String featuredEstatesScreen = '/featured_estates_screen';

  static const String realEstatesListByCategoryScreen =
      '/real_estates_list_by_category_screen';

  static const String topLocationsScreen = '/top_locations_screen';

  static const String topLocationsLocationDetailScreen =
      '/top_locations_location_detail_screen';

  static const String topAgentsScreen = '/top_agents_screen';

  static const String topAgentsProfileDetailPage =
      '/top_agents_profile_detail_page';

  static const String topAgentsProfileDetailTabContainerScreen =
      '/top_agents_profile_detail_tab_container_screen';

  static const String reviewEmptyScreen = '/review_empty_screen';

  static const String reviewFillScreen = '/review_fill_screen';

  static const String summaryScreen = '/summary_screen';

  static const String formDetailScreen = '/form_detail_screen';

  static const String addLocationScreen = '/add_location_screen';

  static const String addPhotosScreen = '/add_photos_screen';

  static const String extraInformationScreen = '/extra_information_screen';

  static const String loginScreen = '/login_screen';

  static const String formEmptyScreen = '/form_empty_screen';

  static const String notificationListPage = '/notification_list_page';

  static const String notificationListTabContainerScreen =
      '/notification_list_tab_container_screen';

  static const String messagesListPage = '/messages_list_page';

  static const String chatScreen = '/chat_screen';

  static const String callScreen = '/call_screen';

  static const String favouriteEmptyScreen = '/favourite_empty_screen';

  static const String verticalPage = '/vertical_page';

  static const String horizontalScreen = '/horizontal_screen';

  static const String registerFormEmptyScreen = '/register_form_empty_screen';

  static const String formOtpScreen = '/form_otp_screen';

  static const String emptyMapScreen = '/empty_map_screen';

  static const String exampleDataPage = '/example_data_page';

  static const String transactionPage = '/transaction_page';

  static const String transactionTabContainerPage =
      '/transaction_tab_container_page';

  static const String listingsPage = '/listings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String allReviewsPage = '/all_reviews_page';

  static const String allReviewsTabContainerScreen =
      '/all_reviews_tab_container_screen';

  static const String emptySearchScreen = '/empty_search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String filterChooseLocationScreen =
      '/filter_choose_location_screen';

  static const String resultFilterScreen = '/result_filter_screen';

  static const String locationEmptyScreen = '/location_empty_screen';

  static const String locationChooseLocationScreen =
      '/location_choose_location_screen';

  static const String locationFillScreen = '/location_fill_screen';

  static const String preferableScreen = '/preferable_screen';

  static const String preferableSelectedScreen = '/preferable_selected_screen';

  static const String paymentEmptyPage = '/payment_empty_page';

  static const String paymentEmptyTabContainerScreen =
      '/payment_empty_tab_container_screen';

  static const String historyDetailScreen = '/history_detail_screen';

  static const String addReviewEmptyScreen = '/add_review_empty_screen';

  static const String addReviewFillScreen = '/add_review_fill_screen';

  static const String paymentPaypalPage = '/payment_paypal_page';

  static const String paymentMastercardPage = '/payment_mastercard_page';

  static const String userEmptyScreen = '/user_empty_screen';

  static const String editFormScreen = '/edit_form_screen';

  static const String propertyDetailsScreen = '/property_details_screen';

  static const String viewScreen = '/view_screen';

  static const String viewOnMapScreen = '/view_on_map_screen';

  static const String reviewsPage = '/reviews_page';

  static const String reviewsTabContainerScreen =
      '/reviews_tab_container_screen';

  static const String reviewsGalleryScreen = '/reviews_gallery_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String promotionScreen = '/promotion_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        productTourOneScreen: ProductTourOneScreen.builder,
        productTourTwoScreen: ProductTourTwoScreen.builder,
        productTourThreeScreen: ProductTourThreeScreen.builder,
        featuredEstatesScreen: FeaturedEstatesScreen.builder,
        realEstatesListByCategoryScreen:
            RealEstatesListByCategoryScreen.builder,
        topLocationsScreen: TopLocationsScreen.builder,
        topLocationsLocationDetailScreen:
            TopLocationsLocationDetailScreen.builder,
        topAgentsScreen: TopAgentsScreen.builder,
        topAgentsProfileDetailTabContainerScreen:
            TopAgentsProfileDetailTabContainerScreen.builder,
        reviewEmptyScreen: ReviewEmptyScreen.builder,
        reviewFillScreen: ReviewFillScreen.builder,
        summaryScreen: SummaryScreen.builder,
        formDetailScreen: FormDetailScreen.builder,
        addLocationScreen: AddLocationScreen.builder,
        addPhotosScreen: AddPhotosScreen.builder,
        extraInformationScreen: ExtraInformationScreen.builder,
        loginScreen: LoginScreen.builder,
        formEmptyScreen: FormEmptyScreen.builder,
        notificationListTabContainerScreen:
            NotificationListTabContainerScreen.builder,
        chatScreen: ChatScreen.builder,
        callScreen: CallScreen.builder,
        favouriteEmptyScreen: FavouriteEmptyScreen.builder,
        horizontalScreen: HorizontalScreen.builder,
        registerFormEmptyScreen: RegisterFormEmptyScreen.builder,
        formOtpScreen: FormOtpScreen.builder,
        emptyMapScreen: EmptyMapScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        allReviewsTabContainerScreen: AllReviewsTabContainerScreen.builder,
        emptySearchScreen: EmptySearchScreen.builder,
        searchResultScreen: SearchResultScreen.builder,
        filterChooseLocationScreen: FilterChooseLocationScreen.builder,
        resultFilterScreen: ResultFilterScreen.builder,
        locationEmptyScreen: LocationEmptyScreen.builder,
        locationChooseLocationScreen: LocationChooseLocationScreen.builder,
        locationFillScreen: LocationFillScreen.builder,
        preferableScreen: PreferableScreen.builder,
        preferableSelectedScreen: PreferableSelectedScreen.builder,
        paymentEmptyTabContainerScreen: PaymentEmptyTabContainerScreen.builder,
        historyDetailScreen: HistoryDetailScreen.builder,
        addReviewEmptyScreen: AddReviewEmptyScreen.builder,
        addReviewFillScreen: AddReviewFillScreen.builder,
        userEmptyScreen: UserEmptyScreen.builder,
        editFormScreen: EditFormScreen.builder,
        propertyDetailsScreen: PropertyDetailsScreen.builder,
        viewScreen: ViewScreen.builder,
        viewOnMapScreen: ViewOnMapScreen.builder,
        reviewsTabContainerScreen: ReviewsTabContainerScreen.builder,
        reviewsGalleryScreen: ReviewsGalleryScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        promotionScreen: PromotionScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
