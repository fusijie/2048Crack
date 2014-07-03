.class final Lcom/c/a/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/c/a/a/ah;

.field private e:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/c/a/a/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/a/ad;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/c/a/a/ad;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lcom/c/a/a/ad;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p4, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    invoke-interface {v0}, Lcom/c/a/a/ah;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/ad;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v5

    move-object v0, v3

    move v4, v1

    :cond_1
    :goto_0
    if-nez v4, :cond_4

    :goto_1
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/c/a/a/ah;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    invoke-interface {v0}, Lcom/c/a/a/ah;->b()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/ad;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/net/MalformedURLException;

    const-string v4, "No valid URI scheme was provided"

    invoke-direct {v0, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UnknownHostException exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/c/a/a/ad;->e:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/c/a/a/ad;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/a/ad;->e:I

    iget-object v6, p0, Lcom/c/a/a/ad;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v4, v0, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    move-object v8, v4

    move v4, v0

    move-object v0, v8

    :goto_4
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    invoke-interface {v6}, Lcom/c/a/a/ah;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    :try_start_3
    const-string v0, "AsyncHttpRequest"

    const-string v4, "Unhandled exception origin cause"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unhandled exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/c/a/a/ad;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v4, p0, Lcom/c/a/a/ad;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v6, p0, Lcom/c/a/a/ad;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/c/a/a/ad;->d:Lcom/c/a/a/ah;

    invoke-interface {v4, v0}, Lcom/c/a/a/ah;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_5
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NPE in HttpClient: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/c/a/a/ad;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/a/ad;->e:I

    iget-object v6, p0, Lcom/c/a/a/ad;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v4, v0, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v8, v4

    move v4, v0

    move-object v0, v8

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_3

    :catch_4
    move-exception v0

    iget v4, p0, Lcom/c/a/a/ad;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/c/a/a/ad;->e:I

    iget-object v6, p0, Lcom/c/a/a/ad;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v0, v4, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    goto/16 :goto_4
.end method
