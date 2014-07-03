.class public Lcom/mdotm/android/http/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 307
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 308
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 309
    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 310
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 311
    const-string v0, "?"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 312
    return-object p1
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 296
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 297
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 298
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    const/4 v2, 0x1

    .line 301
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .parameter "context"
    .parameter "url"

    .prologue
    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "resource url = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const/4 v3, 0x0

    .line 38
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mdotm/android/http/FileDownloader;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 46
    .local v2, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v5, 0x1388

    .line 47
    .local v5, timeoutConnection:I
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    const/16 v6, 0x2710

    .line 55
    .local v6, timeoutSocket:I
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 62
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 70
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 72
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 73
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    .line 72
    if-ne v7, v8, :cond_0

    .line 74
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 75
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 102
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #timeoutConnection:I
    .end local v6           #timeoutSocket:I
    :goto_0
    return-object v3

    .line 78
    .restart local v1       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v2       #httpParameters:Lorg/apache/http/params/HttpParams;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v5       #timeoutConnection:I
    .restart local v6       #timeoutSocket:I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to download file. response code "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 80
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 78
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 77
    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    .line 84
    goto :goto_0

    .line 86
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #timeoutConnection:I
    .end local v6           #timeoutSocket:I
    :cond_1
    const-string v7, "n/w not available to download file"

    .line 85
    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    const/4 v3, 0x0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MalformedURLException exception while downloading file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const/4 v3, 0x0

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IOException exception while downloading file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 97
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public downloadHtmlResources(Landroid/content/Context;Lcom/mdotm/android/model/HtmlResourceModel;I)V
    .locals 9
    .parameter "context"
    .parameter "htmlResourceModel"
    .parameter "cacheLocation"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 110
    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Resolved link is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Lcom/mdotm/android/model/HtmlResourceModel;->getResolvedLink()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lcom/mdotm/android/model/HtmlResourceModel;->getAction()I

    move-result v5

    sget v6, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    if-ne v5, v6, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p2}, Lcom/mdotm/android/model/HtmlResourceModel;->getResolvedLink()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-direct {p0, v5}, Lcom/mdotm/android/http/FileDownloader;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, fileLocalName:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/mdotm/android/model/HtmlResourceModel;->setCachedFileName(Ljava/lang/String;)V

    .line 124
    if-eqz p3, :cond_2

    .line 126
    if-ne p3, v8, :cond_1

    .line 127
    new-instance v4, Ljava/io/File;

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 129
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 130
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 131
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 132
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v4, localFile:Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    const-string v5, "Cache exist locally using the same file"

    .line 151
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    .line 290
    .end local v1           #fileLocalName:Ljava/lang/String;
    .end local v4           #localFile:Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 134
    .restart local v1       #fileLocalName:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/io/File;

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 136
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 137
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 138
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 139
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v4       #localFile:Ljava/io/File;
    goto :goto_0

    .line 142
    .end local v4           #localFile:Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/io/File;

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 144
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 145
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 146
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4       #localFile:Ljava/io/File;
    goto :goto_0

    .line 163
    :cond_3
    invoke-static {p1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v5

    .line 166
    invoke-virtual {p2}, Lcom/mdotm/android/model/HtmlResourceModel;->getCachedFileName()Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-virtual {v5, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromCacheTable(Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, in:Ljava/io/InputStream;
    if-eqz p3, :cond_7

    .line 170
    invoke-virtual {p2}, Lcom/mdotm/android/model/HtmlResourceModel;->getResolvedLink()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {p0, p1, v5}, Lcom/mdotm/android/http/FileDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 171
    if-nez v2, :cond_4

    .line 173
    const-string v5, "returning response as it is. Since unable to download file"

    .line 172
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    .line 274
    :goto_2
    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 279
    .end local v1           #fileLocalName:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #localFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p2, v7}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fileLocalName:Ljava/lang/String;
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v4       #localFile:Ljava/io/File;
    :cond_4
    if-ne p3, v8, :cond_5

    .line 178
    :try_start_1
    invoke-virtual {p2}, Lcom/mdotm/android/model/HtmlResourceModel;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 190
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 196
    invoke-virtual {p0, v2, v4}, Lcom/mdotm/android/http/FileDownloader;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    .line 199
    .local v3, isFilewrote:Z
    if-eqz v3, :cond_6

    .line 201
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    goto :goto_2

    .line 208
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    goto :goto_2

    .line 222
    .end local v3           #isFilewrote:Z
    :cond_7
    invoke-virtual {p2}, Lcom/mdotm/android/model/HtmlResourceModel;->isVideo()Z

    move-result v5

    if-nez v5, :cond_a

    .line 224
    invoke-virtual {p2}, Lcom/mdotm/android/model/HtmlResourceModel;->getResolvedLink()Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {p0, p1, v5}, Lcom/mdotm/android/http/FileDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 225
    if-nez v2, :cond_8

    .line 227
    const-string v5, "returning response as it is. Since unable to download file"

    .line 226
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 234
    invoke-virtual {p0, v2, v4}, Lcom/mdotm/android/http/FileDownloader;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    .line 237
    .restart local v3       #isFilewrote:Z
    if-eqz v3, :cond_9

    .line 239
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    :cond_9
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    .end local v3           #isFilewrote:Z
    :cond_a
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .parameter "in"
    .parameter "localFile"

    .prologue
    const/4 v4, 0x0

    .line 318
    const-string v5, "writing stream to file"

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 321
    .local v2, out:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 322
    .local v3, read:I
    const/16 v5, 0xc00

    new-array v0, v5, [B

    .line 323
    .local v0, bytes:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 327
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 328
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 329
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 331
    const-string v5, "successfully finished writing"

    .line 330
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    const/4 v4, 0x1

    .line 346
    .end local v0           #bytes:[B
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v3           #read:I
    :goto_1
    return v4

    .line 324
    .restart local v0       #bytes:[B
    .restart local v2       #out:Ljava/io/FileOutputStream;
    .restart local v3       #read:I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 333
    .end local v0           #bytes:[B
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v3           #read:I
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FileNotfound exception while writting file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 339
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 341
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException exception while writting file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 343
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
