.class Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;
.super Landroid/os/AsyncTask;
.source "MdotMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/utils/MdotMUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAsynchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/mdotm/android/utils/MdotMUtils;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/utils/MdotMUtils;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "con"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->this$0:Lcom/mdotm/android/utils/MdotMUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->context:Landroid/content/Context;

    .line 329
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    .line 334
    const/4 v5, 0x0

    aget-object v2, p1, v5

    .line 335
    .local v2, impPixel:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reporting impression "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 338
    :try_start_0
    iget-object v5, p0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->this$0:Lcom/mdotm/android/utils/MdotMUtils;

    iget-object v6, p0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->context:Landroid/content/Context;

    #calls: Lcom/mdotm/android/utils/MdotMUtils;->isNetworkAvailable(Landroid/content/Context;)Z
    invoke-static {v5, v6}, Lcom/mdotm/android/utils/MdotMUtils;->access$0(Lcom/mdotm/android/utils/MdotMUtils;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 340
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 341
    const-string v6, "http.connection.timeout"

    .line 342
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x1388

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 340
    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 343
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    .line 344
    invoke-direct {v5, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 345
    .local v3, response:Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_2

    .line 346
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 347
    .local v4, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "impression successfull "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 350
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 384
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #statusLine:Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 354
    .restart local v1       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    .restart local v4       #statusLine:Lorg/apache/http/StatusLine;
    :cond_1
    const-string v5, "impression unsuccessfull "

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 366
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #statusLine:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MalformedURLException exception while reporting impression "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v0           #e:Ljava/net/MalformedURLException;
    .restart local v1       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_1
    const-string v5, "Impression reporting response is NULL"

    .line 361
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 371
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v0

    .line 373
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException exception while reporting impression "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 373
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 376
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while recording impression "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v5, "imp pixel url is null"

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
