.class public Lcom/nextpeer/android/facebook/Response;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/Response$PagedResults;,
        Lcom/nextpeer/android/facebook/Response$PagingDirection;,
        Lcom/nextpeer/android/facebook/Response$PagingInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final INVALID_SESSION_FACEBOOK_ERROR_CODE:I = 0xbe

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_CACHE_TAG:Ljava/lang/String; = "ResponseCache"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field private static responseCache:Lcom/nextpeer/android/facebook/internal/FileLruCache;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/nextpeer/android/facebook/FacebookRequestError;

.field private final graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

.field private final graphObjectList:Lcom/nextpeer/android/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nextpeer/android/facebook/model/GraphObjectList",
            "<",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromCache:Z

.field private final request:Lcom/nextpeer/android/facebook/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/Response;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nextpeer/android/facebook/Response;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookRequestError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Response;->request:Lcom/nextpeer/android/facebook/Request;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObjectList:Lcom/nextpeer/android/facebook/model/GraphObjectList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/Response;->isFromCache:Z

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Response;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    return-void
.end method

.method constructor <init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/model/GraphObject;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Response;->request:Lcom/nextpeer/android/facebook/Request;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObjectList:Lcom/nextpeer/android/facebook/model/GraphObjectList;

    iput-boolean p4, p0, Lcom/nextpeer/android/facebook/Response;->isFromCache:Z

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Response;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    return-void
.end method

.method constructor <init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/model/GraphObjectList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/nextpeer/android/facebook/model/GraphObjectList",
            "<",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Response;->request:Lcom/nextpeer/android/facebook/Request;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Response;->graphObjectList:Lcom/nextpeer/android/facebook/model/GraphObjectList;

    iput-boolean p4, p0, Lcom/nextpeer/android/facebook/Response;->isFromCache:Z

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Response;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Request;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/nextpeer/android/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Lcom/nextpeer/android/facebook/Response;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Request;

    new-instance v5, Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p1, v5}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookRequestError;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static createResponseFromObject(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/nextpeer/android/facebook/Response;
    .locals 3

    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2, p4, p1}, Lcom/nextpeer/android/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getErrorCode()I

    move-result v0

    const/16 v2, 0xbe

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Request;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->closeAndClearTokenInformation()V

    :cond_0
    new-instance v0, Lcom/nextpeer/android/facebook/Response;

    invoke-direct {v0, p0, p1, v1}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookRequestError;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "body"

    const-string v1, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p2, v0, v1}, Lcom/nextpeer/android/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/nextpeer/android/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v1

    new-instance v0, Lcom/nextpeer/android/facebook/Response;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/model/GraphObject;Z)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/json/JSONArray;

    const-class v1, Lcom/nextpeer/android/facebook/model/GraphObject;

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v1

    new-instance v0, Lcom/nextpeer/android/facebook/Response;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/model/GraphObjectList;Z)V

    goto :goto_0

    :cond_3
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_4
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v0, :cond_5

    new-instance v0, Lcom/nextpeer/android/facebook/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/model/GraphObject;Z)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got unexpected object type in response, class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Request;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v0, Lcom/nextpeer/android/facebook/Response;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x1

    if-ne v3, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Request;

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "body"

    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    :goto_0
    const-string v6, "code"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_1
    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Unexpected number of results"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0xc8

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Lcom/nextpeer/android/facebook/Response;

    new-instance v6, Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookRequestError;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p2

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v5, Lcom/nextpeer/android/facebook/Response;

    new-instance v6, Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookRequestError;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v1, p2

    goto :goto_1

    :cond_4
    check-cast v1, Lorg/json/JSONArray;

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_5

    return-object v4

    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Request;

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p0, v3, p3, p2}, Lcom/nextpeer/android/facebook/Response;->createResponseFromObject(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/nextpeer/android/facebook/Response;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nextpeer/android/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :catch_2
    move-exception v3

    new-instance v5, Lcom/nextpeer/android/facebook/Response;

    new-instance v6, Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookRequestError;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_3
    move-exception v3

    new-instance v5, Lcom/nextpeer/android/facebook/Response;

    new-instance v6, Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/nextpeer/android/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/nextpeer/android/facebook/Response;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookRequestError;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/nextpeer/android/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/nextpeer/android/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v2, "Response"

    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p1, p2, p3}, Lcom/nextpeer/android/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/nextpeer/android/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/nextpeer/android/facebook/Response;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v2, "Response"

    const-string v3, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/nextpeer/android/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    instance-of v0, p1, Lcom/nextpeer/android/facebook/internal/CacheableRequestBatch;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/nextpeer/android/facebook/internal/CacheableRequestBatch;

    invoke-static {}, Lcom/nextpeer/android/facebook/Response;->getResponseCache()Lcom/nextpeer/android/facebook/internal/FileLruCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/internal/CacheableRequestBatch;->getCacheKeyOverride()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/RequestBatch;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {p1, v5}, Lcom/nextpeer/android/facebook/RequestBatch;->get(I)Lcom/nextpeer/android/facebook/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/internal/CacheableRequestBatch;->getForceRoundTrip()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    invoke-virtual {v3, v1}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/nextpeer/android/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v2, v0, p1, v4}, Lcom/nextpeer/android/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nextpeer/android/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    invoke-static {v2}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-object v0

    :cond_1
    sget-object v4, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v5, "ResponseCache"

    const-string v6, "Not using cache for cacheable request because no key was specified"

    invoke-static {v4, v5, v6}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :cond_2
    :goto_4
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/nextpeer/android/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/nextpeer/android/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v2}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v2}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    invoke-static {v2}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2, v1}, Lcom/nextpeer/android/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/nextpeer/android/facebook/FacebookException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p0, v0}, Lcom/nextpeer/android/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/nextpeer/android/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/nextpeer/android/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    :try_start_6
    sget-object v2, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/nextpeer/android/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/nextpeer/android/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    :try_start_7
    sget-object v2, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/nextpeer/android/facebook/internal/Logger;->log(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/nextpeer/android/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/nextpeer/android/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_7
    move-exception v0

    move-object v0, v2

    goto/16 :goto_2

    :cond_5
    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto/16 :goto_3

    :cond_6
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_3
.end method

.method static getResponseCache()Lcom/nextpeer/android/facebook/internal/FileLruCache;
    .locals 4

    sget-object v0, Lcom/nextpeer/android/facebook/Response;->responseCache:Lcom/nextpeer/android/facebook/internal/FileLruCache;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/nextpeer/android/facebook/internal/FileLruCache;

    const-string v2, "ResponseCache"

    new-instance v3, Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/nextpeer/android/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/nextpeer/android/facebook/Response;->responseCache:Lcom/nextpeer/android/facebook/internal/FileLruCache;

    :cond_0
    sget-object v0, Lcom/nextpeer/android/facebook/Response;->responseCache:Lcom/nextpeer/android/facebook/internal/FileLruCache;

    return-object v0
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/nextpeer/android/facebook/FacebookRequestError;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getGraphObject()Lcom/nextpeer/android/facebook/model/GraphObject;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphObjectAs(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must pass in a valid interface that extends GraphObject"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    invoke-interface {v0, p1}, Lcom/nextpeer/android/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final getGraphObjectList()Lcom/nextpeer/android/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nextpeer/android/facebook/model/GraphObjectList",
            "<",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObjectList:Lcom/nextpeer/android/facebook/model/GraphObjectList;

    return-object v0
.end method

.method public final getGraphObjectListAs(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/nextpeer/android/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObjectList:Lcom/nextpeer/android/facebook/model/GraphObjectList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObjectList:Lcom/nextpeer/android/facebook/model/GraphObjectList;

    invoke-interface {v0, p1}, Lcom/nextpeer/android/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getIsFromCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/Response;->isFromCache:Z

    return v0
.end method

.method public getRequest()Lcom/nextpeer/android/facebook/Request;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->request:Lcom/nextpeer/android/facebook/Request;

    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/nextpeer/android/facebook/Response$PagingDirection;)Lcom/nextpeer/android/facebook/Request;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    const-class v2, Lcom/nextpeer/android/facebook/Response$PagedResults;

    invoke-interface {v0, v2}, Lcom/nextpeer/android/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Response$PagedResults;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/Response$PagedResults;->getPaging()Lcom/nextpeer/android/facebook/Response$PagingInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/nextpeer/android/facebook/Response$PagingDirection;->NEXT:Lcom/nextpeer/android/facebook/Response$PagingDirection;

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/Response$PagingInfo;->getNext()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/nextpeer/android/facebook/Response$PagingInfo;->getPrevious()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Response;->request:Lcom/nextpeer/android/facebook/Request;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    :try_start_0
    new-instance v2, Lcom/nextpeer/android/facebook/Request;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Response;->request:Lcom/nextpeer/android/facebook/Request;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/Request;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v3

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v1, "%d"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Response:  responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Response;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Response;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nextpeer/android/facebook/Response;->isFromCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "unknown"

    goto :goto_1
.end method
