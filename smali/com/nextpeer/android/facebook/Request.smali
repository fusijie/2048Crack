.class public Lcom/nextpeer/android/facebook/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/Request$Callback;,
        Lcom/nextpeer/android/facebook/Request$GraphPlaceListCallback;,
        Lcom/nextpeer/android/facebook/Request$GraphUserCallback;,
        Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;,
        Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;,
        Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;,
        Lcom/nextpeer/android/facebook/Request$Serializer;
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIGRATION_BUNDLE_PARAM:Ljava/lang/String; = "migration_bundle"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_ACTION_FORMAT:Ljava/lang/String; = "me/%s"

.field private static final MY_FEED:Ljava/lang/String; = "me/feed"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_OBJECTS_FORMAT:Ljava/lang/String; = "me/objects/%s"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final MY_VIDEOS:Ljava/lang/String; = "me/videos"

.field private static final OBJECT_PARAM:Ljava/lang/String; = "object"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;


# instance fields
.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/nextpeer/android/facebook/Request$Callback;

.field private graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/nextpeer/android/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private restMethod:Ljava/lang/String;

.field private session:Lcom/nextpeer/android/facebook/Session;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Request;->graphPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/nextpeer/android/facebook/Request;->callback:Lcom/nextpeer/android/facebook/Request$Callback;

    invoke-virtual {p0, p4}, Lcom/nextpeer/android/facebook/Request;->setHttpMethod(Lcom/nextpeer/android/facebook/HttpMethod;)V

    if-eqz p3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    const-string v2, "fbsdk:20130708"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method

.method constructor <init>(Lcom/nextpeer/android/facebook/Session;Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Request;->overriddenURL:Ljava/lang/String;

    sget-object v0, Lcom/nextpeer/android/facebook/HttpMethod;->GET:Lcom/nextpeer/android/facebook/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/Request;->setHttpMethod(Lcom/nextpeer/android/facebook/HttpMethod;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$0(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/nextpeer/android/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/nextpeer/android/facebook/Request;->typedListFromResponse(Lcom/nextpeer/android/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addCommonParameters()V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Session provided to a Request in un-opened state."

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-static {v1}, Lcom/nextpeer/android/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/nextpeer/android/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->httpMethod:Lcom/nextpeer/android/facebook/HttpMethod;

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->GET:Lcom/nextpeer/android/facebook/HttpMethod;

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter type for GET request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/nextpeer/android/facebook/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    invoke-static {}, Lcom/nextpeer/android/facebook/Request;->getMimeContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object v0
.end method

.method public static executeAndWait(Lcom/nextpeer/android/facebook/Request;)Lcom/nextpeer/android/facebook/Response;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Lcom/nextpeer/android/facebook/Request;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->executeBatchAndWait([Lcom/nextpeer/android/facebook/Request;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Response;

    return-object v0
.end method

.method public static executeBatchAndWait(Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/nextpeer/android/facebook/Request;->toHttpConnection(Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nextpeer/android/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->getRequests()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/nextpeer/android/facebook/FacebookException;

    invoke-direct {v3, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Lcom/nextpeer/android/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/FacebookException;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/Request;->runCallbacks(Lcom/nextpeer/android/facebook/RequestBatch;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nextpeer/android/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->executeBatchAndWait(Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/nextpeer/android/facebook/Request;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/nextpeer/android/facebook/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeBatchAsync(Lcom/nextpeer/android/facebook/RequestBatch;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1

    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/RequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/RequestAsyncTask;-><init>(Lcom/nextpeer/android/facebook/RequestBatch;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/facebook/Request;",
            ">;)",
            "Lcom/nextpeer/android/facebook/RequestAsyncTask;"
        }
    .end annotation

    new-instance v0, Lcom/nextpeer/android/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->executeBatchAsync(Lcom/nextpeer/android/facebook/RequestBatch;)Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/nextpeer/android/facebook/Request;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1

    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->executeBatchAsync(Ljava/util/Collection;)Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/util/List;
    .locals 6
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

    invoke-static {p0, p1}, Lcom/nextpeer/android/facebook/Response;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/nextpeer/android/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/RequestBatch;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v3, "Received %d responses while expecting %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p1, v1}, Lcom/nextpeer/android/facebook/Request;->runCallbacks(Lcom/nextpeer/android/facebook/RequestBatch;Ljava/util/List;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Request;

    iget-object v4, v0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->extendAccessTokenIfNeeded()V

    goto :goto_1
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nextpeer/android/facebook/RequestBatch;

    invoke-direct {v0, p1}, Lcom/nextpeer/android/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/RequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/nextpeer/android/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)V

    invoke-virtual {p2, p0}, Lcom/nextpeer/android/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/nextpeer/android/facebook/Request;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/nextpeer/android/facebook/RequestBatch;)Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeGraphPathRequestAsync(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/nextpeer/android/facebook/Request;->newGraphPathRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMeRequestAsync(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Request$GraphUserCallback;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/nextpeer/android/facebook/Request;->newMeRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Request$GraphUserCallback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMyFriendsRequestAsync(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/nextpeer/android/facebook/Request;->newMyFriendsRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executePlacesSearchRequestAsync(Lcom/nextpeer/android/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/nextpeer/android/facebook/Request$GraphPlaceListCallback;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/nextpeer/android/facebook/Request;->newPlacesSearchRequest(Lcom/nextpeer/android/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/nextpeer/android/facebook/Request$GraphPlaceListCallback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executePostRequestAsync(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/model/GraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/nextpeer/android/facebook/Request;->newPostRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/model/GraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeRestRequestAsync(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/nextpeer/android/facebook/Request;->newRestRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeStatusUpdateRequestAsync(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/nextpeer/android/facebook/Request;->newStatusUpdateRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/nextpeer/android/facebook/Session;Landroid/graphics/Bitmap;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/nextpeer/android/facebook/Request;->newUploadPhotoRequest(Lcom/nextpeer/android/facebook/Session;Landroid/graphics/Bitmap;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/nextpeer/android/facebook/Session;Ljava/io/File;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/nextpeer/android/facebook/Request;->newUploadPhotoRequest(Lcom/nextpeer/android/facebook/Session;Ljava/io/File;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static getBatchAppId(Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/nextpeer/android/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Request;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/nextpeer/android/facebook/Request;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FBAndroidSDK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.5.2"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/facebook/Request;->userAgent:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/nextpeer/android/facebook/Request;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/nextpeer/android/facebook/Session;Landroid/content/Context;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/nextpeer/android/facebook/Request;->newCustomAudienceThirdPartyIdRequest(Lcom/nextpeer/android/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/nextpeer/android/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    if-nez p0, :cond_5

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_1
    if-nez p2, :cond_3

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lcom/nextpeer/android/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/custom_audience_third_party_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "udid"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->GET:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0

    :cond_5
    move-object v1, p0

    goto :goto_0
.end method

.method public static newDeleteObjectRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const/4 v3, 0x0

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->DELETE:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newGraphPathRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMeRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Request$GraphUserCallback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const/4 v3, 0x0

    new-instance v5, Lcom/nextpeer/android/facebook/Request$1;

    invoke-direct {v5, p1}, Lcom/nextpeer/android/facebook/Request$1;-><init>(Lcom/nextpeer/android/facebook/Request$GraphUserCallback;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMyFriendsRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const/4 v3, 0x0

    new-instance v5, Lcom/nextpeer/android/facebook/Request$2;

    invoke-direct {v5, p1}, Lcom/nextpeer/android/facebook/Request$2;-><init>(Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me/friends"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPlacesSearchRequest(Lcom/nextpeer/android/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/nextpeer/android/facebook/Request$GraphPlaceListCallback;)Lcom/nextpeer/android/facebook/Request;
    .locals 8

    if-nez p1, :cond_0

    invoke-static {p4}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "type"

    const-string v1, "place"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "limit"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    const-string v0, "center"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {p4}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "q"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v5, Lcom/nextpeer/android/facebook/Request$3;

    invoke-direct {v5, p5}, Lcom/nextpeer/android/facebook/Request$3;-><init>(Lcom/nextpeer/android/facebook/Request$GraphPlaceListCallback;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "search"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->GET:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostOpenGraphActionRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/model/OpenGraphAction;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "openGraphAction cannot be null"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "openGraphAction must have non-null \'type\' property"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "me/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/nextpeer/android/facebook/Request;->newPostRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/model/GraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/model/OpenGraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "openGraphObject cannot be null"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "openGraphObject must have non-null \'type\' property"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "openGraphObject must have non-null \'title\' property"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "me/objects/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "object"

    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/facebook/model/GraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const-class v0, Lcom/nextpeer/android/facebook/model/OpenGraphObject;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/nextpeer/android/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/model/OpenGraphObject;

    move-result-object v0

    if-eqz p6, :cond_0

    invoke-interface {v0, p6}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->setData(Lcom/nextpeer/android/facebook/model/GraphObject;)V

    :cond_0
    invoke-static {p0, v0, p7}, Lcom/nextpeer/android/facebook/Request;->newPostOpenGraphObjectRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/model/OpenGraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newPostRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/model/GraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const/4 v3, 0x0

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    iput-object p2, v0, Lcom/nextpeer/android/facebook/Request;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    return-object v0
.end method

.method public static newRestRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;)Lcom/nextpeer/android/facebook/Request;
    .locals 2

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;)V

    iput-object p1, v0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/nextpeer/android/facebook/Request;->newStatusUpdateRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Lcom/nextpeer/android/facebook/model/GraphPlace;Ljava/util/List;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/Session;",
            "Ljava/lang/String;",
            "Lcom/nextpeer/android/facebook/model/GraphPlace;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/model/GraphUser;",
            ">;",
            "Lcom/nextpeer/android/facebook/Request$Callback;",
            ")",
            "Lcom/nextpeer/android/facebook/Request;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    if-nez p2, :cond_1

    move-object v0, v1

    :goto_2
    invoke-static {p0, p1, v0, v2, p4}, Lcom/nextpeer/android/facebook/Request;->newStatusUpdateRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/model/GraphUser;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/nextpeer/android/facebook/model/GraphPlace;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method private static newStatusUpdateRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/Session;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nextpeer/android/facebook/Request$Callback;",
            ")",
            "Lcom/nextpeer/android/facebook/Request;"
        }
    .end annotation

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "place"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ","

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tags"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me/feed"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/model/OpenGraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "openGraphObject cannot be null"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "openGraphObject must have an id"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "object"

    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/facebook/model/GraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const-class v0, Lcom/nextpeer/android/facebook/model/OpenGraphObject;

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/nextpeer/android/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/model/OpenGraphObject;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->setId(Ljava/lang/String;)V

    invoke-interface {v0, p6}, Lcom/nextpeer/android/facebook/model/OpenGraphObject;->setData(Lcom/nextpeer/android/facebook/model/GraphObject;)V

    invoke-static {p0, v0, p7}, Lcom/nextpeer/android/facebook/Request;->newUpdateOpenGraphObjectRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/model/OpenGraphObject;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/nextpeer/android/facebook/Session;Landroid/graphics/Bitmap;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "picture"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/nextpeer/android/facebook/Session;Ljava/io/File;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const/high16 v0, 0x1000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "picture"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/nextpeer/android/facebook/Session;Landroid/graphics/Bitmap;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "file"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/nextpeer/android/facebook/Session;Ljava/io/File;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const/high16 v0, 0x1000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;

    const-string v2, "image/png"

    invoke-direct {v1, v0, v2}, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "file"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadVideoRequest(Lcom/nextpeer/android/facebook/Session;Ljava/io/File;Lcom/nextpeer/android/facebook/Request$Callback;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const/high16 v0, 0x1000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me/videos"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processGraphObject(Lcom/nextpeer/android/facebook/model/GraphObject;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "me/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/me/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x3

    if-le v0, v4, :cond_2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ge v0, v1, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    move v4, v0

    :goto_1
    invoke-interface {p0}, Lcom/nextpeer/android/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v5, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p2, v5}, Lcom/nextpeer/android/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    move v4, v3

    goto :goto_1
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;Z)V
    .locals 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/nextpeer/android/facebook/model/GraphObject;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, Lcom/nextpeer/android/facebook/model/GraphObject;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :cond_0
    :goto_1
    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v0, Lorg/json/JSONObject;

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-class v3, Lcom/nextpeer/android/facebook/model/GraphObjectList;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lcom/nextpeer/android/facebook/model/GraphObjectList;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "%s[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1, p2, p3}, Lcom/nextpeer/android/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    :cond_4
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v2

    :goto_4
    if-ge v1, v3, :cond_1

    const-string v4, "%s[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, p2, p3}, Lcom/nextpeer/android/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Date;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static runCallbacks(Lcom/nextpeer/android/facebook/RequestBatch;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/RequestBatch;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Response;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/Request$4;

    invoke-direct {v0, v3, p0}, Lcom/nextpeer/android/facebook/Request$4;-><init>(Ljava/util/ArrayList;Lcom/nextpeer/android/facebook/RequestBatch;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/nextpeer/android/facebook/RequestBatch;->get(I)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    iget-object v4, v0, Lcom/nextpeer/android/facebook/Request;->callback:Lcom/nextpeer/android/facebook/Request$Callback;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/util/Pair;

    iget-object v5, v0, Lcom/nextpeer/android/facebook/Request;->callback:Lcom/nextpeer/android/facebook/Request$Callback;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Response;

    invoke-direct {v4, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static serializeAttachments(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/Request$Serializer;)V
    .locals 4

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/nextpeer/android/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0, v2}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/Request$Serializer;)V
    .locals 4

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/nextpeer/android/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0, v2}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static serializeRequestsAsJSON(Lcom/nextpeer/android/facebook/Request$Serializer;Ljava/util/Collection;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/Request$Serializer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/facebook/Request;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "batch"

    invoke-virtual {p0, v1, v0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Request;

    invoke-direct {v0, v1, p2}, Lcom/nextpeer/android/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Landroid/os/Bundle;)V
    .locals 9

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "name"

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "depends_on"

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Request;->getUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v2

    const-string v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "method"

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Request;->httpMethod:Lcom/nextpeer/android/facebook/HttpMethod;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Request;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    new-instance v4, Lcom/nextpeer/android/facebook/Request$5;

    invoke-direct {v4, p0, v0}, Lcom/nextpeer/android/facebook/Request$5;-><init>(Lcom/nextpeer/android/facebook/Request;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/nextpeer/android/facebook/Request;->processGraphObject(Lcom/nextpeer/android/facebook/model/GraphObject;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;)V

    const-string v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "%s%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "file"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v5, v0}, Lcom/nextpeer/android/facebook/internal/Utility;->putObjectInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static final serializeToUrlConnection(Lcom/nextpeer/android/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/nextpeer/android/facebook/internal/Logger;

    sget-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v4, "Request"

    invoke-direct {v3, v0, v4}, Lcom/nextpeer/android/facebook/internal/Logger;-><init>(Lcom/nextpeer/android/facebook/LoggingBehavior;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/nextpeer/android/facebook/RequestBatch;->get(I)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/facebook/Request;->httpMethod:Lcom/nextpeer/android/facebook/HttpMethod;

    :goto_0
    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    const-string v6, "Request:\n"

    invoke-virtual {v3, v6}, Lcom/nextpeer/android/facebook/internal/Logger;->append(Ljava/lang/String;)V

    const-string v6, "Id"

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "URL"

    invoke-virtual {v3, v6, v5}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "User-Agent"

    const-string v7, "User-Agent"

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "Content-Type"

    const-string v7, "Content-Type"

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->getTimeout()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->getTimeout()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    sget-object v6, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/internal/Logger;->log()V

    :goto_2
    return-void

    :cond_0
    sget-object v0, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    new-instance v0, Lcom/nextpeer/android/facebook/Request$Serializer;

    invoke-direct {v0, v2, v3}, Lcom/nextpeer/android/facebook/Request$Serializer;-><init>(Ljava/io/BufferedOutputStream;Lcom/nextpeer/android/facebook/internal/Logger;)V

    if-ne v4, v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nextpeer/android/facebook/RequestBatch;->get(I)Lcom/nextpeer/android/facebook/Request;

    move-result-object v1

    const-string v4, "  Parameters:\n"

    invoke-virtual {v3, v4}, Lcom/nextpeer/android/facebook/internal/Logger;->append(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v4, v0}, Lcom/nextpeer/android/facebook/Request;->serializeParameters(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/Request$Serializer;)V

    const-string v4, "  Attachments:\n"

    invoke-virtual {v3, v4}, Lcom/nextpeer/android/facebook/internal/Logger;->append(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v4, v0}, Lcom/nextpeer/android/facebook/Request;->serializeAttachments(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/Request$Serializer;)V

    iget-object v4, v1, Lcom/nextpeer/android/facebook/Request;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    if-eqz v4, :cond_3

    iget-object v1, v1, Lcom/nextpeer/android/facebook/Request;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/nextpeer/android/facebook/Request;->processGraphObject(Lcom/nextpeer/android/facebook/model/GraphObject;Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/internal/Logger;->log()V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/nextpeer/android/facebook/Request;->getBatchAppId(Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v0

    :cond_5
    :try_start_2
    const-string v4, "batch_app_id"

    invoke-virtual {v0, v4, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/nextpeer/android/facebook/Request;->serializeRequestsAsJSON(Lcom/nextpeer/android/facebook/Request$Serializer;Ljava/util/Collection;Landroid/os/Bundle;)V

    const-string v4, "  Attachments:\n"

    invoke-virtual {v3, v4}, Lcom/nextpeer/android/facebook/internal/Logger;->append(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/nextpeer/android/facebook/Request;->serializeAttachments(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/Request$Serializer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/nextpeer/android/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    return-void
.end method

.method public static toHttpConnection(Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    .locals 3

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/RequestBatch;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/RequestBatch;->get(I)Lcom/nextpeer/android/facebook/Request;

    move-result-object v1

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/Request;->serializeToUrlConnection(Lcom/nextpeer/android/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Request;

    invoke-direct {v0}, Lcom/nextpeer/android/facebook/Request;->validate()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/nextpeer/android/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/facebook/Request;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->toHttpConnection(Lcom/nextpeer/android/facebook/RequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/nextpeer/android/facebook/Request;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static typedListFromResponse(Lcom/nextpeer/android/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">(",
            "Lcom/nextpeer/android/facebook/Response;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    const-class v0, Lcom/nextpeer/android/facebook/model/GraphMultiResult;

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/model/GraphMultiResult;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/nextpeer/android/facebook/model/GraphMultiResult;->getData()Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/nextpeer/android/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v0

    goto :goto_0
.end method

.method private validate()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of a graph path or REST method may be specified per request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/nextpeer/android/facebook/Response;
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/facebook/Request;->executeAndWait(Lcom/nextpeer/android/facebook/Request;)Lcom/nextpeer/android/facebook/Response;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nextpeer/android/facebook/Request;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Request;->executeBatchAsync([Lcom/nextpeer/android/facebook/Request;)Lcom/nextpeer/android/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/nextpeer/android/facebook/Request$Callback;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->callback:Lcom/nextpeer/android/facebook/Request$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lcom/nextpeer/android/facebook/model/GraphObject;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/nextpeer/android/facebook/HttpMethod;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->httpMethod:Lcom/nextpeer/android/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getRestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Lcom/nextpeer/android/facebook/Session;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForBatchedRequest()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/nextpeer/android/facebook/Request;->addCommonParameters()V

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->graphPath:Ljava/lang/String;

    goto :goto_0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->overriddenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "%s/%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/nextpeer/android/facebook/internal/ServerProtocol;->getRestUrlBase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0}, Lcom/nextpeer/android/facebook/Request;->addCommonParameters()V

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "%s/%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/nextpeer/android/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Request;->graphPath:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryName:Ljava/lang/String;

    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nextpeer/android/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    return-void
.end method

.method public final setCallback(Lcom/nextpeer/android/facebook/Request$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->callback:Lcom/nextpeer/android/facebook/Request$Callback;

    return-void
.end method

.method public final setGraphObject(Lcom/nextpeer/android/facebook/model/GraphObject;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->graphPath:Ljava/lang/String;

    return-void
.end method

.method public final setHttpMethod(Lcom/nextpeer/android/facebook/HttpMethod;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/facebook/HttpMethod;->GET:Lcom/nextpeer/android/facebook/HttpMethod;

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->httpMethod:Lcom/nextpeer/android/facebook/HttpMethod;

    return-void

    :cond_1
    sget-object p1, Lcom/nextpeer/android/facebook/HttpMethod;->GET:Lcom/nextpeer/android/facebook/HttpMethod;

    goto :goto_0
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method public final setRestMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    return-void
.end method

.method public final setSession(Lcom/nextpeer/android/facebook/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request;->tag:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Request:  session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->graphObject:Lcom/nextpeer/android/facebook/model/GraphObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->httpMethod:Lcom/nextpeer/android/facebook/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
