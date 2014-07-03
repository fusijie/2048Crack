.class public Lcom/mdotm/android/database/MdotMCacheHandler;
.super Lcom/mdotm/android/database/MdotMDBAdapter;
.source "MdotMCacheHandler.java"


# static fields
.field public static final CACHE_IS_ON_INTERNAL:I = 0x2

.field public static final CACHE_IS_ON_SD_CARD:I = 0x1

.field protected static final DATABASE_NAME:Ljava/lang/String; = "AdDatabase.db"

.field protected static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME_AD_CACHE:Ljava/lang/String; = "AdCache"

.field public static final TABLE_NAME_AD_RESOURCES:Ljava/lang/String; = "AdHtmlResources"

.field private static instance:Lcom/mdotm/android/database/MdotMCacheHandler;


# instance fields
.field final FILE_NAME:Ljava/lang/String;

.field final HTML_FILE_NAME:Ljava/lang/String;

.field final LAST_USED:Ljava/lang/String;

.field final LOCATION:Ljava/lang/String;

.field final RESOURCE_NAME:Ljava/lang/String;

.field private final TABLE_CREATE_AD_CACHE:Ljava/lang/String;

.field private final TABLE_CREATE_LOCATION_TABLE:Ljava/lang/String;

.field private final TABLE_CREATE_RESOURCE_TABLE:Ljava/lang/String;

.field final TABLE_NAME_CACHE_LOCATION:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "DatabaseName"
    .parameter "version"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/mdotm/android/database/MdotMDBAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 16
    const-string v0, "FileName"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->FILE_NAME:Ljava/lang/String;

    .line 17
    const-string v0, "lastUsed"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->LAST_USED:Ljava/lang/String;

    .line 21
    const-string v0, "HtmlName"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->HTML_FILE_NAME:Ljava/lang/String;

    .line 22
    const-string v0, "ResourceName"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->RESOURCE_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "CacheLocation"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_NAME_CACHE_LOCATION:Ljava/lang/String;

    .line 25
    const-string v0, "Location"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->LOCATION:Ljava/lang/String;

    .line 33
    const-string v0, "CREATE TABLE IF NOT EXISTS AdCache (  FileName TEXT NOT NULL,lastUsed INTEGER );"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_CREATE_AD_CACHE:Ljava/lang/String;

    .line 37
    const-string v0, "CREATE TABLE IF NOT EXISTS AdHtmlResources (  HtmlName TEXT NOT NULL,ResourceName TEXT );"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_CREATE_RESOURCE_TABLE:Ljava/lang/String;

    .line 42
    const-string v0, "CREATE TABLE IF NOT EXISTS CacheLocation ( Location INTEGER NOT NULL);"

    iput-object v0, p0, Lcom/mdotm/android/database/MdotMCacheHandler;->TABLE_CREATE_LOCATION_TABLE:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->createTable()V

    .line 62
    return-void
.end method

.method private checkReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "resource"
    .parameter "fileName"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 272
    if-eqz p2, :cond_3

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 276
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 277
    const-string v1, "AdHtmlResources"

    .line 278
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "HtmlName"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HtmlName!= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ResourceName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 280
    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 281
    const/4 v7, 0x0

    .line 277
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_6

    .line 288
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move v1, v9

    .line 296
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 285
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 288
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    move v1, v10

    .line 296
    goto :goto_0

    .line 287
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 288
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 294
    :cond_5
    throw v1

    .line 288
    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_7
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;
    .locals 4
    .parameter "appContext"

    .prologue
    .line 52
    const-class v1, Lcom/mdotm/android/database/MdotMCacheHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mdotm/android/database/MdotMCacheHandler;->instance:Lcom/mdotm/android/database/MdotMCacheHandler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/mdotm/android/database/MdotMCacheHandler;

    const-string v2, "AdDatabase.db"

    .line 54
    const/4 v3, 0x1

    .line 53
    invoke-direct {v0, p0, v2, v3}, Lcom/mdotm/android/database/MdotMCacheHandler;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcom/mdotm/android/database/MdotMCacheHandler;->instance:Lcom/mdotm/android/database/MdotMCacheHandler;

    .line 56
    :cond_0
    sget-object v0, Lcom/mdotm/android/database/MdotMCacheHandler;->instance:Lcom/mdotm/android/database/MdotMCacheHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearAllTable(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 434
    const-string v1, "AdCache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    const-string v1, "AdHtmlResources"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 436
    const-string v1, "CacheLocation"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v1

    .line 441
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v1

    .line 441
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 444
    :cond_1
    throw v1
.end method

.method public clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 7
    .parameter "resource"
    .parameter "con"
    .parameter "location"
    .parameter "mainHtml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v5, 0x2

    if-ne p3, v5, :cond_2

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 214
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, path:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    .line 220
    invoke-direct {p0, p1, p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->checkReference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 221
    .local v1, isReferenced:Z
    if-nez v1, :cond_0

    .line 222
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 227
    .end local v0           #f:Ljava/io/File;
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromResourceTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, subResources:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 230
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_3

    .line 238
    .end local v1           #isReferenced:Z
    .end local v3           #subResources:[Ljava/lang/String;
    :cond_1
    return-void

    .line 216
    .end local v2           #path:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 217
    sget-object v6, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #path:Ljava/lang/String;
    goto :goto_0

    .line 230
    .restart local v1       #isReferenced:Z
    .restart local v3       #subResources:[Ljava/lang/String;
    :cond_3
    aget-object v4, v3, v5

    .line 231
    .local v4, subSource:Ljava/lang/String;
    invoke-virtual {p0, v4, p2, p3, p1}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public declared-synchronized createTable()V
    .locals 3

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    .line 66
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "creating table"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    const-string v1, "Create table is called"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 70
    const-string v1, "CREATE TABLE IF NOT EXISTS AdCache (  FileName TEXT NOT NULL,lastUsed INTEGER );"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v1, "CREATE TABLE IF NOT EXISTS AdHtmlResources (  HtmlName TEXT NOT NULL,ResourceName TEXT );"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v1, "CREATE TABLE IF NOT EXISTS CacheLocation ( Location INTEGER NOT NULL);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database path is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    const-string v1, "DB CLOSED"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 79
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    const-string v1, "DB CLOSED"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 78
    :catchall_1
    move-exception v1

    .line 79
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    const-string v2, "DB CLOSED"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public deleteAllCacheFromCacheAndResourceTable(Landroid/content/Context;I)V
    .locals 11
    .parameter "mContext"
    .parameter "cacheLocation"

    .prologue
    const/4 v6, 0x0

    .line 492
    const/4 v7, 0x2

    if-ne p2, v7, :cond_2

    .line 493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 494
    sget-object v8, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 493
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, path:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFileFromCacheTable()[Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, cacheFiles:[Ljava/lang/String;
    array-length v8, v0

    move v7, v6

    :goto_1
    if-lt v7, v8, :cond_3

    .line 505
    const/4 v1, 0x0

    .line 507
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 508
    const-string v7, "AdCache"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 513
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 517
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getAllFilesfromResourceTable()[Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, resources:[Ljava/lang/String;
    array-length v7, v5

    :goto_3
    if-lt v6, v7, :cond_5

    .line 524
    :try_start_1
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 525
    const-string v6, "AdHtmlResources"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 529
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 530
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 534
    :cond_1
    :goto_4
    return-void

    .line 496
    .end local v0           #cacheFiles:[Ljava/lang/String;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #resources:[Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 496
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #path:Ljava/lang/String;
    goto :goto_0

    .line 500
    .restart local v0       #cacheFiles:[Ljava/lang/String;
    :cond_3
    aget-object v3, v0, v7

    .line 501
    .local v3, file:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 500
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 509
    .end local v2           #f:Ljava/io/File;
    .end local v3           #file:Ljava/lang/String;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v7

    .line 512
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 513
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 511
    :catchall_0
    move-exception v6

    .line 512
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 513
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 515
    :cond_4
    throw v6

    .line 518
    .restart local v5       #resources:[Ljava/lang/String;
    :cond_5
    aget-object v3, v5, v6

    .line 519
    .restart local v3       #file:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .restart local v2       #f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 518
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 526
    .end local v2           #f:Ljava/io/File;
    .end local v3           #file:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 529
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 530
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_4

    .line 528
    :catchall_1
    move-exception v6

    .line 529
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 530
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 532
    :cond_6
    throw v6
.end method

.method public deleteCache(Landroid/content/Context;I)Z
    .locals 13
    .parameter "context"
    .parameter "location"

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 113
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "SELECT FileName FROM AdCache ORDER BY lastUsed ASC LIMIT 1"

    .line 115
    .local v7, query:Ljava/lang/String;
    const/4 v0, 0x0

    .line 116
    .local v0, cacheCursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 118
    .local v4, fileName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 119
    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 124
    const-string v10, "FileName"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 123
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    const/4 v10, 0x2

    if-ne p2, v10, :cond_3

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 130
    sget-object v11, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 129
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, path:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    const-string v10, "null"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 137
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 139
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 142
    :cond_0
    const-string v10, "AdCache"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "FileName=\'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 142
    invoke-virtual {v1, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 148
    .local v5, i:I
    invoke-virtual {p0, v4}, Lcom/mdotm/android/database/MdotMCacheHandler;->getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, resources:[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 150
    array-length v11, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_4

    .line 163
    .end local v3           #file:Ljava/io/File;
    .end local v5           #i:I
    .end local v6           #path:Ljava/lang/String;
    .end local v9           #resources:[Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 164
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 168
    :cond_2
    const/4 v10, 0x1

    :goto_2
    return v10

    .line 132
    :cond_3
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 133
    sget-object v11, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 132
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_0

    .line 150
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #i:I
    .restart local v9       #resources:[Ljava/lang/String;
    :cond_4
    aget-object v8, v9, v10

    .line 151
    .local v8, resource:Ljava/lang/String;
    invoke-virtual {p0, v8, p1, p2, v4}, Lcom/mdotm/android/database/MdotMCacheHandler;->clearCachedResource(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 158
    .end local v3           #file:Ljava/io/File;
    .end local v5           #i:I
    .end local v6           #path:Ljava/lang/String;
    .end local v8           #resource:Ljava/lang/String;
    .end local v9           #resources:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Ljava/lang/Exception;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 164
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 160
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 161
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 163
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 164
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 166
    :cond_6
    throw v10
.end method

.method public deleteFileFromCacheTable(Ljava/lang/String;)V
    .locals 5
    .parameter "substring"

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 451
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM AdCache WHERE FileName = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, delete:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM AdHtmlResources WHERE HtmlName = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 456
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, deleteFromResource:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 467
    .end local v1           #delete:Ljava/lang/String;
    .end local v2           #deleteFromResource:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v3

    .line 463
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v3

    .line 463
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 466
    :cond_1
    throw v3
.end method

.method public deleteFileFromResourceTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "substring"
    .parameter "mainString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 474
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM AdHtmlResources WHERE ResourceName = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HtmlName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 479
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, deleteFromResource:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 487
    :cond_0
    return-void

    .line 481
    .end local v1           #deleteFromResource:Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 482
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 485
    :cond_1
    throw v2
.end method

.method public getAllFileFromCacheTable()[Ljava/lang/String;
    .locals 13

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 365
    .local v8, cacheCursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 366
    .local v11, i:I
    const/4 v10, 0x0

    .line 368
    .local v10, filesFromCacheTable:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 369
    const-string v1, "AdCache"

    .line 370
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "FileName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 369
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 371
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 372
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v10, v1, [Ljava/lang/String;

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v12, v11

    .line 375
    .end local v11           #i:I
    .local v12, i:I
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v12

    .line 376
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 384
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 385
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 392
    :cond_3
    :goto_1
    return-object v10

    .line 378
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v9

    .line 382
    .local v9, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 384
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 385
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_5
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 383
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 384
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 385
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 388
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 390
    :cond_7
    throw v1
.end method

.method public getAllFilesfromResourceTable()[Ljava/lang/String;
    .locals 13

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 399
    .local v8, cacheCursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 400
    .local v11, i:I
    const/4 v10, 0x0

    .line 402
    .local v10, filesFromResourceTable:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 403
    const-string v1, "AdHtmlResources"

    .line 404
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ResourceName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 405
    const/4 v7, 0x0

    .line 403
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 406
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 407
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v10, v1, [Ljava/lang/String;

    .line 408
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v12, v11

    .line 410
    .end local v11           #i:I
    .local v12, i:I
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v12

    .line 411
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 419
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 420
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 427
    :cond_3
    :goto_1
    return-object v10

    .line 413
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v9

    .line 417
    .local v9, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 419
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 420
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_5
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 418
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 419
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 420
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 425
    :cond_7
    throw v1
.end method

.method public getCacheLocation()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 309
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 310
    const-string v1, "CacheLocation"

    .line 311
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Location"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 310
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 312
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location column index  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    const-string v2, "Location"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string v2, " row count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    const-string v1, "Location"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 326
    .local v9, location:I
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 333
    .end local v9           #location:I
    :cond_1
    :goto_0
    return v9

    .line 322
    :catch_0
    move-exception v1

    .line 326
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v1

    .line 326
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 332
    :cond_4
    throw v1

    .line 326
    :cond_5
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_6
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method public getRelatedResources(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "resource"

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 243
    .local v11, resources:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 245
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 246
    const-string v1, "AdHtmlResources"

    .line 247
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ResourceName"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HtmlName= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 246
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 250
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const/4 v9, 0x0

    .line 252
    .local v9, i:I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    move v10, v9

    .line 254
    .end local v9           #i:I
    .local v10, i:I
    :goto_0
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v10

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_6

    .line 260
    .end local v9           #i:I
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 268
    :cond_2
    :goto_1
    return-object v11

    .line 257
    :catch_0
    move-exception v1

    .line 260
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 261
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 259
    :catchall_0
    move-exception v1

    .line 260
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 261
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 267
    :cond_5
    throw v1

    .restart local v9       #i:I
    :cond_6
    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_0
.end method

.method public getResourceParents(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "file"

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 564
    .local v11, resources:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 566
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 567
    const-string v1, "AdHtmlResources"

    .line 568
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "HtmlName"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ResourceName= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 567
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 571
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const/4 v9, 0x0

    .line 573
    .local v9, i:I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    move v10, v9

    .line 575
    .end local v9           #i:I
    .local v10, i:I
    :goto_0
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v10

    .line 576
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_6

    .line 581
    .end local v9           #i:I
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 589
    :cond_2
    :goto_1
    return-object v11

    .line 578
    :catch_0
    move-exception v1

    .line 581
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 582
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 580
    :catchall_0
    move-exception v1

    .line 581
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 582
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 586
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 588
    :cond_5
    throw v1

    .restart local v9       #i:I
    :cond_6
    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_0
.end method

.method public insertCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .parameter "tableName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "FileName"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "lastUsed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inserting file name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 96
    const-string v2, "Name inserted successfuly"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    :cond_0
    return-void
.end method

.method public insertCacheLocation(I)Z
    .locals 7
    .parameter "location"

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, inserted:Z
    const/4 v0, 0x0

    .line 339
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "Location"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inserting location name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    const-string v5, "CacheLocation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 345
    const-string v4, "CacheLocation"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    const-string v4, "CacheLocation"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 348
    const-string v4, "location inserted successfuly"

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    const/4 v2, 0x1

    .line 355
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 359
    :cond_0
    :goto_0
    return v2

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 353
    :try_start_1
    const-string v4, "Exception while inserting"

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 354
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 355
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 358
    :cond_1
    throw v4
.end method

.method public insertToResourceTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "resourcename"
    .parameter "mainHtmlUrl"

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 539
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "HtmlName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v3, "ResourceName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inserting file name "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 544
    const-string v4, " of main file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lcom/mdotm/android/database/MdotMCacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 547
    const-string v3, "AdHtmlResources"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 549
    const-string v3, "Name inserted successfuly"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v1

    .line 552
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Exception while inserting"

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 553
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 554
    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 557
    :cond_1
    throw v3
.end method

.method public bridge synthetic onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/database/MdotMDBAdapter;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/mdotm/android/database/MdotMDBAdapter;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
