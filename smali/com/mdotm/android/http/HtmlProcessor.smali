.class public Lcom/mdotm/android/http/HtmlProcessor;
.super Ljava/lang/Object;
.source "HtmlProcessor.java"


# static fields
.field protected static DOWNLOAD_RESOURCE:I

.field protected static RESOLVE_URL:I

.field protected static RESOURCE_AUDIO:I

.field protected static RESOURCE_CSS:I

.field protected static RESOURCE_HTML:I

.field protected static RESOURCE_JS:I

.field protected static RESOURCE_OTHER:I

.field protected static RESOURCE_VIDEO:I


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private mHtmlPageString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 42
    sput v0, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    .line 43
    sput v1, Lcom/mdotm/android/http/HtmlProcessor;->RESOLVE_URL:I

    .line 46
    sput v0, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_CSS:I

    .line 47
    sput v1, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_JS:I

    .line 48
    const/4 v0, 0x3

    sput v0, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_VIDEO:I

    .line 49
    const/4 v0, 0x4

    sput v0, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_AUDIO:I

    .line 50
    const/4 v0, 0x5

    sput v0, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_HTML:I

    .line 51
    const/4 v0, 0x6

    sput v0, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_OTHER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private ParseHtmlForTags(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "fileLocalName"
    .parameter "fileString"
    .parameter "cacheLocation"
    .parameter "context"

    .prologue
    .line 191
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v5, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/model/HtmlResourceModel;>;"
    new-instance v8, Lcom/mdotm/android/http/HtmlTagFinder;

    invoke-direct {v8}, Lcom/mdotm/android/http/HtmlTagFinder;-><init>()V

    invoke-virtual {v8, p2}, Lcom/mdotm/android/http/HtmlTagFinder;->getHtmlTags(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 196
    invoke-direct {p0, v5}, Lcom/mdotm/android/http/HtmlProcessor;->resolveUrl(Ljava/util/ArrayList;)V

    .line 199
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 243
    invoke-direct {p0, v5, p1, p2, p4}, Lcom/mdotm/android/http/HtmlProcessor;->updateReferences(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, updatedFile:Ljava/lang/String;
    return-object v7

    .line 199
    .end local v7           #updatedFile:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mdotm/android/model/HtmlResourceModel;

    .line 200
    .local v4, htmlResourceModel:Lcom/mdotm/android/model/HtmlResourceModel;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "original url ** "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getOriginallink()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " resolved "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 202
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getResolvedLink()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 200
    invoke-static {p0, v9}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getResolvedLink()Ljava/lang/String;

    move-result-object v9

    .line 203
    invoke-direct {p0, v9}, Lcom/mdotm/android/http/HtmlProcessor;->isVideoResource(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/mdotm/android/model/HtmlResourceModel;->setVideo(Z)V

    .line 205
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getAction()I

    move-result v9

    sget v10, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    if-ne v9, v10, :cond_0

    .line 206
    new-instance v9, Lcom/mdotm/android/http/FileDownloader;

    invoke-direct {v9}, Lcom/mdotm/android/http/FileDownloader;-><init>()V

    invoke-virtual {v9, p4, v4, p3}, Lcom/mdotm/android/http/FileDownloader;->downloadHtmlResources(Landroid/content/Context;Lcom/mdotm/android/model/HtmlResourceModel;I)V

    .line 208
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getresourceType()I

    move-result v9

    sget v10, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_CSS:I

    if-ne v9, v10, :cond_0

    .line 209
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getAbsoluteCachedPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 212
    :try_start_0
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getAbsoluteCachedPath()Ljava/lang/String;

    move-result-object v9

    .line 211
    invoke-static {v9}, Lcom/mdotm/android/http/HtmlProcessor;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, cssFileString:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getCachedFileName()Ljava/lang/String;

    move-result-object v9

    .line 213
    invoke-direct {p0, v9, v1, p3, p4}, Lcom/mdotm/android/http/HtmlProcessor;->ParseHtmlForTags(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v0, Ljava/io/File;

    .line 217
    invoke-virtual {v4}, Lcom/mdotm/android/model/HtmlResourceModel;->getAbsoluteCachedPath()Ljava/lang/String;

    move-result-object v9

    .line 216
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, cssFile:Ljava/io/File;
    invoke-direct {p0, v1, v0}, Lcom/mdotm/android/http/HtmlProcessor;->writeStringToLocalFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    .line 222
    .local v2, cssWritten:Z
    if-nez v2, :cond_0

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v6, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/model/HtmlResourceModel;>;"
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-direct {p0, v6, p4, p3, p1}, Lcom/mdotm/android/http/HtmlProcessor;->clearCachedResources(Ljava/util/ArrayList;Landroid/content/Context;ILjava/lang/String;)V

    .line 227
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 229
    .end local v0           #cssFile:Ljava/io/File;
    .end local v1           #cssFileString:Ljava/lang/String;
    .end local v2           #cssWritten:Z
    .end local v6           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/model/HtmlResourceModel;>;"
    :catch_0
    move-exception v3

    .line 230
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .restart local v6       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/model/HtmlResourceModel;>;"
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-direct {p0, v6, p4, p3, p1}, Lcom/mdotm/android/http/HtmlProcessor;->clearCachedResources(Ljava/util/ArrayList;Landroid/content/Context;ILjava/lang/String;)V

    .line 234
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/mdotm/android/model/HtmlResourceModel;->setAbsoluteCachedPath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private clearCachedResources(Ljava/util/ArrayList;Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter "con"
    .parameter "location"
    .parameter "mainHtml"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/model/HtmlResourceModel;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/model/HtmlResourceModel;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    return-void

    .line 251
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/model/HtmlResourceModel;

    .line 253
    .local v0, htmlResourceModel:Lcom/mdotm/android/model/HtmlResourceModel;
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getAction()I

    move-result v2

    sget v3, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    if-ne v2, v3, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getAbsoluteCachedPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    :try_start_0
    invoke-static {p2}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v2

    .line 257
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getCachedFileName()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v2, v3, p2, p3, p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getBaseUrl()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 350
    const-string v5, "getting base url"

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    const-string v5, "<\\s*base\\s.*?>"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 352
    .local v2, baseTagPattern:Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 353
    .local v4, srcMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    const-string v5, "base tag is there"

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, baseString:Ljava/lang/String;
    const-string v5, "[h|H][r|R][e|E][f|F]=\\\"([^\\\"]+)\\\""

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 358
    .local v0, baseHrefPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 359
    .local v3, hrefMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    const-string v5, "found bas url "

    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    .line 366
    :goto_0
    iget-object v5, p0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    .line 371
    .end local v0           #baseHrefPattern:Ljava/util/regex/Pattern;
    .end local v1           #baseString:Ljava/lang/String;
    .end local v3           #hrefMatcher:Ljava/util/regex/Matcher;
    :goto_1
    iget-object v5, p0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    return-object v5

    .line 363
    .restart local v0       #baseHrefPattern:Ljava/util/regex/Pattern;
    .restart local v1       #baseString:Ljava/lang/String;
    .restart local v3       #hrefMatcher:Ljava/util/regex/Matcher;
    :cond_0
    iput-object v6, p0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    goto :goto_0

    .line 369
    .end local v0           #baseHrefPattern:Ljava/util/regex/Pattern;
    .end local v1           #baseString:Ljava/lang/String;
    .end local v3           #hrefMatcher:Ljava/util/regex/Matcher;
    :cond_1
    iput-object v6, p0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 375
    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, name:Ljava/lang/String;
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 380
    return-object v0
.end method

.method private isVideoResource(Ljava/lang/String;)Z
    .locals 3
    .parameter "resolvedLink"

    .prologue
    .line 384
    if-eqz p1, :cond_1

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resoved link is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, ext:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extension is ** "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "m4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    const-string v1, "webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    const-string v1, "ogv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    const-string v1, "ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    :cond_0
    const/4 v1, 0x1

    .line 397
    .end local v0           #ext:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 269
    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 270
    .local v0, fc:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    .line 271
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 270
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 273
    .local v6, bb:Ljava/nio/MappedByteBuffer;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 275
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 273
    return-object v1

    .line 274
    .end local v0           #fc:Ljava/nio/channels/FileChannel;
    .end local v6           #bb:Ljava/nio/MappedByteBuffer;
    :catchall_0
    move-exception v1

    .line 275
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 276
    throw v1
.end method

.method private removeManifest()V
    .locals 5

    .prologue
    .line 336
    const-string v3, "remove manifest"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    const-string v3, "[m|M][a|A][n|N][i|I][f|F][e|E][s|S][t|T]\\s*=\\s*\\\"([^\\\"]+)\\\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 339
    .local v2, manifestPattern:Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 341
    .local v1, manifestMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, manifest:Ljava/lang/String;
    iget-object v3, p0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    .line 344
    const-string v3, "find manifest and removed"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .end local v0           #manifest:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private resolveUrl(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/model/HtmlResourceModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/model/HtmlResourceModel;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 333
    return-void

    .line 315
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mdotm/android/model/HtmlResourceModel;

    .line 316
    .local v1, htmlResourceModel:Lcom/mdotm/android/model/HtmlResourceModel;
    invoke-virtual {v1}, Lcom/mdotm/android/model/HtmlResourceModel;->getOriginallink()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 318
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v5, p0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, baseUrl:Ljava/net/URI;
    new-instance v3, Ljava/net/URI;

    invoke-virtual {v1}, Lcom/mdotm/android/model/HtmlResourceModel;->getOriginallink()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 320
    .local v3, subUrl:Ljava/net/URI;
    invoke-virtual {v0, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    .line 321
    .local v2, resolvedUri:Ljava/net/URI;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Base url "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 322
    const-string v6, " original "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 323
    invoke-virtual {v1}, Lcom/mdotm/android/model/HtmlResourceModel;->getOriginallink()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 324
    const-string v6, " resolved url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-static {p0, v5}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mdotm/android/model/HtmlResourceModel;->setResolvedLink(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    .end local v0           #baseUrl:Ljava/net/URI;
    .end local v2           #resolvedUri:Ljava/net/URI;
    .end local v3           #subUrl:Ljava/net/URI;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private revertHtmlProcessing(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 5
    .parameter "htmlFileLocalName"
    .parameter "context"
    .parameter "cacheLocation"

    .prologue
    .line 157
    invoke-static {p2}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v2

    .line 158
    invoke-virtual {v2, p1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, resources:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 160
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 172
    :cond_0
    return-void

    .line 160
    :cond_1
    aget-object v0, v1, v2

    .line 162
    .local v0, resource:Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v4

    .line 163
    invoke-virtual {v4, v0, p2, p3, p1}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateMainHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "originalLink"
    .parameter "newLink"
    .parameter "fileString"

    .prologue
    .line 309
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 310
    return-object p3
.end method

.method private updateReferences(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "mainHtmlName"
    .parameter "fileString"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/model/HtmlResourceModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/model/HtmlResourceModel;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    return-object p3

    .line 289
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/model/HtmlResourceModel;

    .line 291
    .local v0, htmlResourceModel:Lcom/mdotm/android/model/HtmlResourceModel;
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getAction()I

    move-result v2

    sget v3, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    if-ne v2, v3, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getAbsoluteCachedPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 293
    invoke-static {p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v2

    .line 294
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getCachedFileName()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {v2, v3, p2}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertToResourceTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getOriginallink()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getAbsoluteCachedPath()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-direct {p0, v2, v3, p3}, Lcom/mdotm/android/http/HtmlProcessor;->updateMainHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 298
    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getOriginallink()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v0}, Lcom/mdotm/android/model/HtmlResourceModel;->getResolvedLink()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-direct {p0, v2, v3, p3}, Lcom/mdotm/android/http/HtmlProcessor;->updateMainHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private writeStringToLocalFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3
    .parameter "fileString"
    .parameter "localFile"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, writeSuccess:Z
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 179
    .local v1, writer:Ljava/io/Writer;
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v0, 0x1

    .line 186
    .end local v1           #writer:Ljava/io/Writer;
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public ParseHtml(Lcom/mdotm/android/model/MdotMAdResponse;ILandroid/content/Context;)V
    .locals 17
    .parameter "adResponse"
    .parameter "cacheLocation"
    .parameter "context"

    .prologue
    .line 55
    const-string v13, "parsing html response"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mdotm/android/http/HtmlProcessor;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, htmlFileLocalName:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 59
    const/4 v13, 0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 60
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 61
    sget-object v14, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 62
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 60
    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v11, localFile:Ljava/io/File;
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "The local file is:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 75
    const-string v13, "Cache exist locally using the same file"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 78
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    .line 152
    :cond_0
    :goto_1
    return-void

    .line 64
    .end local v11           #localFile:Ljava/io/File;
    :cond_1
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 65
    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 66
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 64
    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local v11       #localFile:Ljava/io/File;
    goto :goto_0

    .line 69
    .end local v11           #localFile:Ljava/io/File;
    :cond_2
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 70
    sget-object v14, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 71
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 69
    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11       #localFile:Ljava/io/File;
    goto/16 :goto_0

    .line 82
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromCacheTable(Ljava/lang/String;)V

    .line 87
    :try_start_0
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 88
    .local v8, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    .line 89
    const-string v14, "http.connection.timeout"

    .line 90
    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x1388

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    .line 88
    invoke-interface {v13, v14, v15}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 91
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-interface {v8, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 93
    .local v7, htmlResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 94
    .local v9, in:Ljava/io/InputStream;
    if-eqz v9, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v3, buffer:Ljava/lang/StringBuffer;
    const/16 v13, 0x400

    new-array v4, v13, [B

    .line 99
    .local v4, data:[B
    const/4 v10, 0x0

    .line 100
    .local v10, len:I
    :goto_2
    const/4 v13, -0x1

    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v13, v10, :cond_5

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "html is "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/mdotm/android/http/HtmlProcessor;->removeManifest()V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/mdotm/android/http/HtmlProcessor;->getBaseUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    if-nez v13, :cond_4

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mdotm/android/http/HtmlProcessor;->baseUrl:Ljava/lang/String;

    .line 114
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v13, v1, v2}, Lcom/mdotm/android/http/HtmlProcessor;->ParseHtmlForTags(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mdotm/android/http/HtmlProcessor;->mHtmlPageString:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/mdotm/android/http/HtmlProcessor;->writeStringToLocalFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v12

    .line 120
    .local v12, writeSuccess:Z
    if-nez v12, :cond_6

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/mdotm/android/http/HtmlProcessor;->revertHtmlProcessing(Ljava/lang/String;Landroid/content/Context;I)V

    .line 123
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 142
    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #data:[B
    .end local v7           #htmlResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #len:I
    .end local v12           #writeSuccess:Z
    :catch_0
    move-exception v5

    .line 143
    .local v5, e:Ljava/net/MalformedURLException;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/mdotm/android/http/HtmlProcessor;->revertHtmlProcessing(Ljava/lang/String;Landroid/content/Context;I)V

    .line 144
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_1

    .line 101
    .end local v5           #e:Ljava/net/MalformedURLException;
    .restart local v3       #buffer:Ljava/lang/StringBuffer;
    .restart local v4       #data:[B
    .restart local v7       #htmlResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v10       #len:I
    :cond_5
    :try_start_1
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 146
    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #data:[B
    .end local v7           #htmlResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #len:I
    :catch_1
    move-exception v5

    .line 147
    .local v5, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/mdotm/android/http/HtmlProcessor;->revertHtmlProcessing(Ljava/lang/String;Landroid/content/Context;I)V

    .line 148
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_1

    .line 127
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #buffer:Ljava/lang/StringBuffer;
    .restart local v4       #data:[B
    .restart local v7       #htmlResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v10       #len:I
    .restart local v12       #writeSuccess:Z
    :cond_6
    :try_start_2
    invoke-static/range {p3 .. p3}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v13

    .line 129
    const-string v14, "AdCache"

    .line 127
    invoke-virtual {v13, v6, v14}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 131
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 132
    :catch_2
    move-exception v5

    .line 133
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/mdotm/android/http/HtmlProcessor;->revertHtmlProcessing(Ljava/lang/String;Landroid/content/Context;I)V

    .line 135
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
