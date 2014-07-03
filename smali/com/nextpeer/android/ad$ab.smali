.class final Lcom/nextpeer/android/ad$ab;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ab"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "db cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)));"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "api_keys"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "api_key"

    aput-object v2, v1, v6

    const-string v2, "uuid"

    aput-object v2, v1, v7

    const-string v2, "created_time"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "created_time"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "opt_out"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "opt_out"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s TEXT, %s TEXT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT);"

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sessions"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "api_key_ref"

    aput-object v2, v1, v6

    const-string v2, "api_keys"

    aput-object v2, v1, v7

    const-string v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "uuid"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "session_start_wall_time"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "session_start_wall_time"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "NPAnalytics_library_version"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "iu"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "app_version"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "android_version"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "android_sdk"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "device_model"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "device_manufacturer"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "device_android_id_hash"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "device_telephony_id_hash"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "device_serial_number_hash"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "device_wifi_mac_hash"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "locale_language"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "locale_country"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "network_carrier"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "network_country"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "network_type"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "device_country"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "latitude"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "longitude"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "device_android_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL DEFAULT 0, %s REAL, %s REAL);"

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "events"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "session_key_ref"

    aput-object v2, v1, v6

    const-string v2, "sessions"

    aput-object v2, v1, v7

    const-string v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "uuid"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "event_name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "real_time"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "real_time"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "wall_time"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "wall_time"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "clv_increase"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "event_lat"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "event_lng"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT NOT NULL CHECK(%s IN (%s, %s)), %s TEXT NOT NULL, %s INTEGER);"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "event_history"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "session_key_ref"

    aput-object v2, v1, v6

    const-string v2, "sessions"

    aput-object v2, v1, v7

    const-string v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "processed_in_blob"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL);"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "attributes"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "events_key_ref"

    aput-object v2, v1, v6

    const-string v2, "events"

    aput-object v2, v1, v7

    const-string v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "attribute_key"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "attribute_value"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL);"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "upload_blobs"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "uuid"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "upload_blob_events"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "upload_blobs_key_ref"

    aput-object v2, v1, v6

    const-string v2, "upload_blobs"

    aput-object v2, v1, v7

    const-string v2, "_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "events_key_ref"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "events"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s INTEGER);"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "info"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "fb_attribution"

    aput-object v2, v1, v6

    const-string v2, "play_attribution"

    aput-object v2, v1, v7

    const-string v2, "registration_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "registration_version"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "first_android_id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "first_telephony_id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "package_name"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "first_run"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "fb_attribution"

    iget-object v2, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nextpeer/android/ac;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_run"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "first_android_id"

    iget-object v2, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nextpeer/android/ac;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_telephony_id"

    iget-object v2, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nextpeer/android/ac;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "identifiers"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "key"

    aput-object v2, v1, v6

    const-string v2, "value"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    const-string v0, "upload_blob_events"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "event_history"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "upload_blobs"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "attributes"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "events"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "sessions"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sessions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "iu"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x5

    if-ge p2, v0, :cond_2

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sessions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "device_wifi_mac_hash"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x6

    if-ge p2, v0, :cond_3

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "attributes"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "attribute_key"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "attribute_key"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "%s = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, -0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_b

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v0, 0x7

    if-ge p2, v0, :cond_4

    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s TEXT, %s INTEGER);"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "fb_attribution"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "first_run"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "fb_attribution"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "first_run"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_4
    const/16 v0, 0x8

    if-ge p2, v0, :cond_5

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "identifiers"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "value"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x9

    if-ge p2, v0, :cond_6

    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL DEFAULT 0;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "events"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "clv_increase"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0xa

    if-ge p2, v0, :cond_7

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "play_attribution"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0xb

    if-ge p2, v0, :cond_8

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "registration_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "registration_version"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    const/16 v0, 0xc

    if-ge p2, v0, :cond_9

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "first_android_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "first_telephony_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "package_name"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "first_android_id"

    iget-object v2, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nextpeer/android/ac;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_telephony_id"

    iget-object v2, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nextpeer/android/ac;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sessions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "device_android_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/16 v0, 0xd

    if-ge p2, v0, :cond_a

    const-string v0, "ALTER TABLE %s ADD COLUMN %s REAL;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "events"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "event_lat"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE %s ADD COLUMN %s REAL;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "events"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "event_lng"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    :try_start_2
    const-string v6, "attribute_key"

    const-string v7, "%s:%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/nextpeer/android/ad$ab;->a:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "attributes"

    invoke-virtual {p1, v6, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method
