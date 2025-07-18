import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OTP Verification Group Code

class OTPVerificationGroup {
  static String getBaseUrl() => 'https://www.fast2sms.com/dev/';
  static Map<String, String> headers = {
    'authorization':
        '52BLrWASoNwRyxXGUIgaTC3iD6pOtPc4qHluQKZVf19nd0EeFY6brSyPxzFQZA5KWiw3XBL71OqjVsEH',
  };
  static SmsapiCall smsapiCall = SmsapiCall();
}

class SmsapiCall {
  Future<ApiCallResponse> call({
    String? variablesNames = '',
    String? numbers = '',
  }) async {
    final baseUrl = OTPVerificationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SMSAPI',
      apiUrl: '${baseUrl}bulkV2',
      callType: ApiCallType.POST,
      headers: {
        'authorization':
            '52BLrWASoNwRyxXGUIgaTC3iD6pOtPc4qHluQKZVf19nd0EeFY6brSyPxzFQZA5KWiw3XBL71OqjVsEH',
      },
      params: {
        'variables_names': variablesNames,
        'route': "q",
        'numbers': numbers,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OTP Verification Group Code

class HttplocalhostapisendverificationCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "+918757126629",
  "action":"login"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'httplocalhostapisendverification',
      apiUrl: 'http://164.92.109.167/api/send-verification',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductsCall {
  static Future<ApiCallResponse> call({
    int? page,
    int? storeId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Products',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/products',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {
        'page': page,
        'store_id': storeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? slug(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].slug''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? sku(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].sku''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? isoutofstock(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].is_out_of_stock''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? stockstatuslabel(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].stock_status_label''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? stockstatushtml(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].stock_status_html''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? imageorigin(dynamic response) => getJsonField(
        response,
        r'''$.data[:].image_with_sizes.origin''',
        true,
      ) as List?;
  static List? imagethumb(dynamic response) => getJsonField(
        response,
        r'''$.data[:].image_with_sizes.thumb''',
        true,
      ) as List?;
  static List? imagemedium(dynamic response) => getJsonField(
        response,
        r'''$.data[:].image_with_sizes.medium''',
        true,
      ) as List?;
  static List? imagerectangle(dynamic response) => getJsonField(
        response,
        r'''$.data[:].image_with_sizes.rectangle''',
        true,
      ) as List?;
  static List<int>? weight(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].weight''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? height(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].height''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? wide(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].wide''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? length(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].length''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? productoptions(dynamic response) => getJsonField(
        response,
        r'''$.data[:].product_options''',
        true,
      ) as List?;
  static List? store(dynamic response) => getJsonField(
        response,
        r'''$.data[:].store''',
        true,
      ) as List?;
  static List<int>? storeid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].store.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? storeslug(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].store.slug''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? storename(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].store.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static dynamic links(dynamic response) => getJsonField(
        response,
        r'''$.links''',
      );
  static String? linksfirst(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.links.first''',
      ));
  static String? linkslast(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.links.last''',
      ));
  static String? linksnext(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.links.next''',
      ));
  static dynamic meta(dynamic response) => getJsonField(
        response,
        r'''$.meta''',
      );
  static int? metacurrentpage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.current_page''',
      ));
  static int? metafrom(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.from''',
      ));
  static int? metalastpage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.last_page''',
      ));
  static List? imagesize(dynamic response) => getJsonField(
        response,
        r'''$.data[:].image_with_sizes''',
        true,
      ) as List?;
  static List<int>? reviewcount(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].reviews_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? reviewavg(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].reviews_avg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? originalpriceformatted(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].original_price_formatted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? originalprice(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].original_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? priceformatted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].price_formatted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? quantity(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? metalinks(dynamic response) => getJsonField(
        response,
        r'''$.meta.links''',
        true,
      ) as List?;
  static List<String>? metaurl(dynamic response) => (getJsonField(
        response,
        r'''$.meta.links[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? metalabel(dynamic response) => (getJsonField(
        response,
        r'''$.meta.links[:].label''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? metaactive(dynamic response) => (getJsonField(
        response,
        r'''$.meta.links[:].active''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static String? metapath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.meta.path''',
      ));
  static int? metaperpage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.per_page''',
      ));
  static List<String>? content(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static int? metato(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.to''',
      ));
  static int? metatotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.total''',
      ));
  static bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
  static List<int>? productId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? productPrice(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PhoneNumberCheckCall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? countryCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "countryCode": "${escapeStringForJson(countryCode)}",
  "phone": "${escapeStringForJson(phoneNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Phone Number Check',
      apiUrl: 'https://retailersconnect.com/api/v1/phone/check',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic phoneData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Status''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static bool? dataExist(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.exists''',
      ));
  static dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.data.user''',
      );
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.name''',
      ));
  static String? userPhone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.phone''',
      ));
}

class UserLoginCall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? verificationCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(phoneNumber)}",
  "verification_code": "${escapeStringForJson(verificationCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Login',
      apiUrl: 'https://retailersconnect.com/api/v1/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.token''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.username''',
      ));
  static String? useremail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  static String? userphone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.phone''',
      ));
  static int? userid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.user_id''',
      ));
}

class AddToCartCall {
  static Future<ApiCallResponse> call({
    int? productId,
    int? quantity,
  }) async {
    final ffApiRequestBody = '''
{
  "product_id": ${productId},
  "qty": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add to Cart',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/cart',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cartId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? cartTotalPrice(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.total_price''',
      ));
  static bool? cartStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class OrderPlacedAPICall {
  static Future<ApiCallResponse> call({
    String? id = '',
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}",
  "user_id": "${userId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order Placed API',
      apiUrl:
          'https://retailersconnect.com/api/v1/ecommerce/checkout/cart/${id}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProductDetailAPICall {
  static Future<ApiCallResponse> call({
    String? slug = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductDetail API',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/products/${slug}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$.data.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static int? productId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  static String? productImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.image_url''',
      ));
  static String? productContent(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.content''',
      ));
  static String? productPrice(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.price_formatted''',
      ));
  static List<String>? mainAttributesTitle(dynamic response) => (getJsonField(
        response,
        r'''$.attribute_sets[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? allAttributes(dynamic response) => getJsonField(
        response,
        r'''$.attribute_sets''',
        true,
      ) as List?;
  static List<String>? storageAttributes(dynamic response) => (getJsonField(
        response,
        r'''$.attribute_sets[1].attributes[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class UpdateCartAPICall {
  static Future<ApiCallResponse> call({
    int? productId,
    int? quantity,
    String? cartId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "product_id": ${productId},
  "qty": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Cart API',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/cart/${cartId}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cartId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? cartCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  static String? cartTotal(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.total_price''',
      ));
  static bool? cartStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class GetCartItemsAPICall {
  static Future<ApiCallResponse> call({
    String? id = '[]',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Cart Items API',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/cart/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic cartContent(dynamic response) => getJsonField(
        response,
        r'''$.content''',
      );
  static int? cartCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  static String? totalPrice(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.total_price''',
      ));
  static dynamic cartId(dynamic response) => getJsonField(
        response,
        r'''$.cart_id''',
      );
}

class GetOrdersAPICall {
  static Future<ApiCallResponse> call({
    String? authToken,
    int? storeId,
  }) async {
    authToken ??= '';

    return ApiManager.instance.makeApiCall(
      callName: 'Get Orders API',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/orders',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'store_id': storeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? orderData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static int? outstandingAmont(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data[0].total_outstanding''',
      ));
  static String? overallpaidAmount(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[0].overall_paid''',
      ));
}

class RemoveCartProductAPICall {
  static Future<ApiCallResponse> call({
    int? productId,
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "product_id": ${productId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Remove Cart Product API',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/cart/${id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OrderDetailAPICall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? orderId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Order Detail API',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/orders/${orderId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? orderProducts(dynamic response) => getJsonField(
        response,
        r'''$.data.products''',
        true,
      ) as List?;
}

class GetAllVendorsAPICall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get all vendors API',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/vendors',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? vendors(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? vendorName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? vendorEmail(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? vendorId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? vendorStoreId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].store_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetProductIdCall {
  static Future<ApiCallResponse> call({
    int? productId,
    List<String>? attributesList,
  }) async {
    final attributes = _serializeList(attributesList);

    final ffApiRequestBody = '''
{
  "product_id": ${productId},
  "attributes": ${attributes}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Product id',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/getproductid',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? variationid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.variation_id''',
      ));
  static String? productVariationPrice(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.product_price''',
      ));
}

class LedgerReportCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Ledger Report',
      apiUrl: 'https://retailersconnect.com/api/v1/ecommerce/customerBillData',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? customerBildata(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static String? overallprimary(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.overall_primary''',
      ));
  static String? outstanding(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.outstanding''',
      ));
  static String? recptamount(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.recpt_amount''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
