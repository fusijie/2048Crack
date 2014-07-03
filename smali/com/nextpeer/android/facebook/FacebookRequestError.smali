.class public final Lcom/nextpeer/android/facebook/FacebookRequestError;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/FacebookRequestError$Category;,
        Lcom/nextpeer/android/facebook/FacebookRequestError$Range;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final EC_APP_NOT_INSTALLED:I = 0x1ca

.field private static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field private static final EC_EXPIRED:I = 0x1cf

.field private static final EC_INVALID_SESSION:I = 0x66

.field private static final EC_INVALID_TOKEN:I = 0xbe

.field private static final EC_PASSWORD_CHANGED:I = 0x1cc

.field private static final EC_PERMISSION_DENIED:I = 0xa

.field private static final EC_RANGE_PERMISSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Range; = null

.field private static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field private static final EC_UNCONFIRMED_USER:I = 0x1d0

.field private static final EC_UNKNOWN_ERROR:I = 0x1

.field private static final EC_USER_CHECKPOINTED:I = 0x1cb

.field private static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"

.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"

.field private static final ERROR_SUB_CODE_KEY:Ljava/lang/String; = "error_subcode"

.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"

.field private static final HTTP_RANGE_CLIENT_ERROR:Lcom/nextpeer/android/facebook/FacebookRequestError$Range; = null

.field private static final HTTP_RANGE_SERVER_ERROR:Lcom/nextpeer/android/facebook/FacebookRequestError$Range; = null

.field private static final HTTP_RANGE_SUCCESS:Lcom/nextpeer/android/facebook/FacebookRequestError$Range; = null

.field public static final INVALID_ERROR_CODE:I = -0x1

.field public static final INVALID_HTTP_STATUS_CODE:I = -0x1

.field private static final INVALID_MESSAGE_ID:I


# instance fields
.field private final batchRequestResult:Ljava/lang/Object;

.field private final category:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

.field private final connection:Ljava/net/HttpURLConnection;

.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final errorType:Ljava/lang/String;

.field private final exception:Lcom/nextpeer/android/facebook/FacebookException;

.field private final requestResult:Lorg/json/JSONObject;

.field private final requestResultBody:Lorg/json/JSONObject;

.field private final requestStatusCode:I

.field private final shouldNotifyUser:Z

.field private final subErrorCode:I

.field private final userActionMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v2, 0x12b

    const/16 v1, 0xc8

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;-><init>(IILcom/nextpeer/android/facebook/FacebookRequestError$Range;)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;-><init>(IILcom/nextpeer/android/facebook/FacebookRequestError$Range;)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;-><init>(IILcom/nextpeer/android/facebook/FacebookRequestError$Range;)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;-><init>(IILcom/nextpeer/android/facebook/FacebookRequestError$Range;)V

    sput-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)V

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->requestStatusCode:I

    iput p2, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorCode:I

    iput p3, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->subErrorCode:I

    iput-object p4, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    iput-object p5, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    iput-object p6, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    iput-object p9, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    if-eqz p10, :cond_1

    iput-object p10, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->exception:Lcom/nextpeer/android/facebook/FacebookException;

    move v3, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    sget-object v1, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->CLIENT:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    move-object v2, v1

    move v1, v0

    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->category:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    iput v1, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->userActionMessageId:I

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->shouldNotifyUser:Z

    return-void

    :cond_1
    new-instance v2, Lcom/nextpeer/android/facebook/FacebookServiceException;

    invoke-direct {v2, p0, p5}, Lcom/nextpeer/android/facebook/FacebookServiceException;-><init>(Lcom/nextpeer/android/facebook/FacebookRequestError;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->exception:Lcom/nextpeer/android/facebook/FacebookException;

    move v3, v0

    goto :goto_0

    :cond_2
    if-eq p2, v1, :cond_3

    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    :cond_3
    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->SERVER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    move v1, v0

    :goto_2
    if-nez v2, :cond_0

    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    invoke-virtual {v2, p1}, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    if-eq p2, v3, :cond_5

    const/16 v3, 0x11

    if-ne p2, v3, :cond_6

    :cond_5
    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    move v1, v0

    goto :goto_2

    :cond_6
    const/16 v3, 0xa

    if-eq p2, v3, :cond_7

    sget-object v3, Lcom/nextpeer/android/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    invoke-virtual {v3, p2}, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    sget v1, Lcom/nextpeer/android/R$string;->np__facebook_requesterror_permissions:I

    goto :goto_2

    :cond_8
    const/16 v3, 0x66

    if-eq p2, v3, :cond_9

    const/16 v3, 0xbe

    if-ne p2, v3, :cond_11

    :cond_9
    const/16 v2, 0x1cb

    if-eq p3, v2, :cond_a

    const/16 v2, 0x1d0

    if-ne p3, v2, :cond_b

    :cond_a
    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    sget v0, Lcom/nextpeer/android/R$string;->np__facebook_requesterror_web_login:I

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_b
    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    const/16 v3, 0x1ca

    if-eq p3, v3, :cond_c

    const/16 v3, 0x1cf

    if-ne p3, v3, :cond_d

    :cond_c
    sget v1, Lcom/nextpeer/android/R$string;->np__facebook_requesterror_relogin:I

    goto :goto_2

    :cond_d
    const/16 v3, 0x1cc

    if-ne p3, v3, :cond_e

    sget v1, Lcom/nextpeer/android/R$string;->np__facebook_requesterror_password_changed:I

    goto :goto_2

    :cond_e
    sget v0, Lcom/nextpeer/android/R$string;->np__facebook_requesterror_reconnect:I

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_f
    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    invoke-virtual {v2, p1}, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->SERVER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    goto :goto_1

    :cond_10
    sget-object v2, Lcom/nextpeer/android/facebook/FacebookRequestError$Category;->OTHER:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    goto :goto_1

    :cond_11
    move v1, v0

    goto :goto_2
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-direct/range {v0 .. v10}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)V

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 11

    const/4 v1, -0x1

    const/4 v4, 0x0

    instance-of v0, p2, Lcom/nextpeer/android/facebook/FacebookException;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/nextpeer/android/facebook/FacebookException;

    move-object v10, p2

    :goto_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)V

    return-void

    :cond_0
    new-instance v10, Lcom/nextpeer/android/facebook/FacebookException;

    invoke-direct {v10, p2}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/nextpeer/android/facebook/FacebookRequestError;
    .locals 12

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    :try_start_0
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "body"

    const-string v4, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v3, v4}, Lcom/nextpeer/android/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v3, v6, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    check-cast v6, Lorg/json/JSONObject;

    const-string v3, "error"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "error"

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/nextpeer/android/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "message"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v3, "error_subcode"

    const/4 v8, -0x1

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v2

    move v2, v4

    move-object v4, v7

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v3, "error_code"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "error_msg"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "error_reason"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    const-string v0, "error_reason"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "error_msg"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "error_code"

    const/4 v3, -0x1

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "error_subcode"

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v11, v2

    move v2, v0

    move v0, v11

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nextpeer/android/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/nextpeer/android/facebook/FacebookRequestError$Range;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookRequestError;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "body"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "body"

    const-string v7, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v6, v7}, Lcom/nextpeer/android/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    :goto_2
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v10

    goto :goto_1

    :cond_4
    move-object v6, v10

    goto :goto_2

    :cond_5
    move v3, v0

    move v2, v0

    move-object v5, v10

    move-object v4, v10

    goto :goto_0
.end method


# virtual methods
.method public final getBatchRequestResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCategory()Lcom/nextpeer/android/facebook/FacebookRequestError$Category;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->category:Lcom/nextpeer/android/facebook/FacebookRequestError$Category;

    return-object v0
.end method

.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorCode:I

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->exception:Lcom/nextpeer/android/facebook/FacebookException;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getErrorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public final getException()Lcom/nextpeer/android/facebook/FacebookException;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->exception:Lcom/nextpeer/android/facebook/FacebookException;

    return-object v0
.end method

.method public final getRequestResult()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getRequestResultBody()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getRequestStatusCode()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->requestStatusCode:I

    return v0
.end method

.method public final getSubErrorCode()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->subErrorCode:I

    return v0
.end method

.method public final getUserActionMessageId()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->userActionMessageId:I

    return v0
.end method

.method public final shouldNotifyUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->shouldNotifyUser:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->requestStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
