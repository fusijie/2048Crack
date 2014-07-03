.class public Lcom/inmobi/monetization/internal/NativeAdRequestTask;
.super Ljava/lang/Object;
.source "NativeAdRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/inmobi/monetization/internal/NativeAdRequest;

.field private b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

.field private c:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 43
    iput-object p2, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 69
    invoke-static {v0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/net/HttpURLConnection;)V

    .line 70
    return-object v0
.end method

.method private a()V
    .locals 10

    .prologue
    .line 87
    const/4 v3, 0x0

    .line 88
    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http Status Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    const-string v2, "im-id"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "[InMobi]-[Network]-4.1.1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Im Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    const-string v2, "im-ec"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    const-string v2, "[InMobi]-[Network]-4.1.1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sandbox error Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :cond_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_9

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    invoke-direct {p0, v3}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 183
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Failed to retrieve native ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    .line 198
    :cond_1
    :goto_1
    return-void

    .line 108
    :cond_2
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v0, "ads"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 110
    if-eqz v4, :cond_3

    .line 112
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 114
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Server returned No Fill "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    invoke-direct {p0, v3}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 191
    :catch_1
    move-exception v0

    .line 192
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Out of memory error received while retieving ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_1

    .line 123
    :cond_4
    :try_start_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 125
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getNativeSdkConfigParams()Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->getmFetchLimit()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    .line 127
    if-le v1, v0, :cond_b

    .line 131
    :goto_3
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_7

    .line 134
    :try_start_6
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 135
    const-string v6, "pubContent"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    const-string v7, "contextCode"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    const-string v8, "namespace"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    if-eqz v6, :cond_5

    const-string v9, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 131
    :cond_5
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 140
    :cond_6
    if-eqz v7, :cond_5

    const-string v6, ""

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 142
    if-eqz v8, :cond_5

    const-string v6, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 144
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 145
    :catch_2
    move-exception v1

    .line 147
    :try_start_7
    const-string v6, "[InMobi]-[Monetization]"

    const-string v7, "JSON Exception"

    invoke-static {v6, v7, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 150
    :cond_7
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 153
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    new-instance v2, Lcom/inmobi/monetization/internal/NativeAdResponse;

    invoke-direct {v2, v5}, Lcom/inmobi/monetization/internal/NativeAdResponse;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestSucceded(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/NativeAdResponse;)V

    goto/16 :goto_2

    .line 156
    :cond_8
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Server Error"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    goto/16 :goto_2

    .line 163
    :cond_9
    const/16 v1, 0x190

    if-ne v0, v1, :cond_a

    .line 164
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Invalid App Id.Please check the app Id in the adrequest is valid and in active state"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    goto/16 :goto_2

    .line 172
    :cond_a
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Server Error"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_3
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 4
    .parameter

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 216
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "[InMobi]-[Network]-4.1.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception closing resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 75
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 76
    const-string v0, "user-agent"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 79
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 80
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 81
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    const-string v0, "content-type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v2, 0x0

    .line 206
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    invoke-direct {p0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Ad Serving URL: http://i.w.inmobi.com/showad.asm"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAdRequest;->buildPostBody()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "[InMobi]-[Network]-4.1.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post body:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/net/HttpURLConnection;

    .line 55
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAdRequest;->buildPostBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v3, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    .line 63
    :cond_0
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Failed to get native ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
