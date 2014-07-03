.class final Lcom/nextpeer/android/af$ab;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ab"
.end annotation


# static fields
.field private static final A:[Ljava/lang/String;

.field private static final B:Ljava/lang/String;

.field private static final C:Ljava/lang/String;

.field private static final D:[Ljava/lang/String;

.field private static final E:[Ljava/lang/String;

.field private static final F:Ljava/lang/String;

.field private static final G:[Ljava/lang/String;

.field private static final H:Ljava/lang/String;

.field private static final I:Ljava/lang/String;

.field private static final J:[Ljava/lang/String;

.field private static final K:Ljava/lang/String;

.field private static final L:[Ljava/lang/String;

.field private static final M:Ljava/lang/String;

.field private static final N:[Ljava/lang/String;

.field private static final O:[Ljava/lang/String;

.field private static final P:[Ljava/lang/String;

.field private static final Q:[Ljava/lang/String;

.field private static final R:Ljava/lang/String;

.field private static final S:[Ljava/lang/String;

.field private static final T:[Ljava/lang/String;

.field private static final U:Ljava/lang/String;

.field private static synthetic V:[I

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:[Ljava/lang/String;

.field private static final v:[Ljava/lang/String;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;

.field private static final y:[Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field protected a:Lcom/nextpeer/android/ad;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private f:J

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "CAST(%s AS TEXT)"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "events_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->b:Ljava/lang/String;

    const-string v0, "CAST(%s as TEXT)"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->c:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "opt_out"

    aput-object v1, v0, v4

    const-string v1, "uuid"

    aput-object v1, v0, v5

    sput-object v0, Lcom/nextpeer/android/af$ab;->h:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "api_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->i:Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->j:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->k:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->l:[Ljava/lang/String;

    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "session_key_ref"

    aput-object v2, v1, v3

    const-string v2, "event_name"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->m:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->n:[Ljava/lang/String;

    const-string v0, "%s = ? AND %s >= ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "event_name"

    aput-object v2, v1, v3

    const-string v2, "wall_time"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->o:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "events_key_ref"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->p:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "session_start_wall_time"

    aput-object v1, v0, v4

    sput-object v0, Lcom/nextpeer/android/af$ab;->q:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "api_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->r:Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "session_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->s:Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "session_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->t:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->u:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "processed_in_blob"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->v:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->w:Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->x:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "uuid"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->y:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "api_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->z:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "session_key_ref"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->A:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->B:Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "events_key_ref"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->C:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->D:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "session_start_wall_time"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->E:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->F:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->G:[Ljava/lang/String;

    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "type"

    aput-object v2, v1, v3

    const-string v2, "session_key_ref"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->H:Ljava/lang/String;

    const-string v0, "%s DESC"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->I:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->J:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->K:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->L:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "event_name"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->M:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/nextpeer/android/af;->e:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->N:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "events_key_ref"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->O:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_name"

    aput-object v1, v0, v4

    const-string v1, "wall_time"

    aput-object v1, v0, v5

    sput-object v0, Lcom/nextpeer/android/af$ab;->P:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "events_key_ref"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->Q:[Ljava/lang/String;

    const-string v0, "%s IS NULL"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "processed_in_blob"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->R:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->S:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "opt_out"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/af$ab;->T:[Ljava/lang/String;

    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "api_key"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/af$ab;->U:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/af$ab;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    return-object v0
.end method

.method static a(Lcom/nextpeer/android/ad;)Ljava/lang/Long;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    const-string v1, "sessions"

    sget-object v2, Lcom/nextpeer/android/af$ab;->k:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v6

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :try_start_2
    const-string v1, "events"

    sget-object v2, Lcom/nextpeer/android/af$ab;->l:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->m:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    sget-object v5, Lcom/nextpeer/android/af;->b:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_6

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v7

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v7, v1

    goto :goto_1
.end method

.method private static a(Lcom/nextpeer/android/ad;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v1, "api_keys"

    sget-object v2, Lcom/nextpeer/android/af$ab;->y:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->z:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "uuid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method private a()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "events"

    sget-object v2, Lcom/nextpeer/android/af$ab;->L:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->M:Ljava/lang/String;

    sget-object v4, Lcom/nextpeer/android/af$ab;->N:[Ljava/lang/String;

    sget-object v5, Lcom/nextpeer/android/af$ab;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "upload_blob_events"

    sget-object v2, Lcom/nextpeer/android/af$ab;->O:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/nextpeer/android/af$ab;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    new-instance v0, Landroid/database/CursorJoiner;

    sget-object v2, Lcom/nextpeer/android/af$ab;->L:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->O:[Ljava/lang/String;

    invoke-direct {v0, v7, v2, v1, v3}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v8

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v0, :cond_3

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v2, :cond_2

    sget-object v0, Lcom/nextpeer/android/af;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorJoiner$Result;

    invoke-static {}, Lcom/nextpeer/android/af$ab;->b()[I

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v0

    aget v0, v4, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v6, v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method private static b(Lcom/nextpeer/android/ad;)J
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v1, "sessions"

    sget-object v2, Lcom/nextpeer/android/af$ab;->D:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    int-to-long v2, v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telephony/TelephonyManager;

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "api_key_ref"

    iget-wide v1, p0, Lcom/nextpeer/android/af$ab;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "session_start_wall_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_version"

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/nextpeer/android/ac;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android_sdk"

    sget v1, Lcom/nextpeer/android/ab;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "android_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/nextpeer/android/ac;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "api_keys"

    const/4 v2, 0x0

    sget-object v3, Lcom/nextpeer/android/af$ab;->r:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "uuid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const-string v1, "device_android_id_hash"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_android_id"

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/nextpeer/android/ac;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_country"

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_manufacturer"

    invoke-static {}, Lcom/nextpeer/android/ac;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_serial_number_hash"

    invoke-static {}, Lcom/nextpeer/android/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_telephony_id_hash"

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/nextpeer/android/ac;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_wifi_mac_hash"

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/nextpeer/android/ac;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "locale_country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "locale_language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NPAnalytics_library_version"

    const-string v1, "1.3.12"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iu"

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nextpeer/android/af$ab;->a(Lcom/nextpeer/android/ad;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "latitude"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v0, "longitude"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v0, "network_carrier"

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network_country"

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network_type"

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/nextpeer/android/ac;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "sessions"

    invoke-virtual {v0, v1, v9}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "session insert failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    sget-object v0, Lcom/nextpeer/android/af;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/nextpeer/android/ad;->a(Landroid/content/Context;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v7

    goto/16 :goto_0

    :cond_4
    move-object v0, v7

    goto/16 :goto_1
.end method

.method private static b(Lcom/nextpeer/android/ad;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "apiKey cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    const-string v1, "api_keys"

    sget-object v2, Lcom/nextpeer/android/af$ab;->T:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->U:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "opt_out"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/af$ab;->V:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/database/CursorJoiner$Result;->values()[Landroid/database/CursorJoiner$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/nextpeer/android/af$ab;->V:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "events"

    sget-object v2, Lcom/nextpeer/android/af$ab;->P:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/nextpeer/android/af$ab;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v0, :cond_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    const-string v0, "event_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/aa;->c(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    sget-object v0, Lcom/nextpeer/android/af;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->g:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    const-string v1, "events"

    sget-object v2, Lcom/nextpeer/android/af$ab;->P:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/nextpeer/android/af$ab;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v7

    :try_start_5
    const-string v1, "upload_blob_events"

    sget-object v2, Lcom/nextpeer/android/af$ab;->Q:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/nextpeer/android/af$ab;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    new-instance v1, Landroid/database/CursorJoiner;

    sget-object v3, Lcom/nextpeer/android/af$ab;->S:[Ljava/lang/String;

    sget-object v4, Lcom/nextpeer/android/af$ab;->Q:[Ljava/lang/String;

    invoke-direct {v1, v7, v3, v6, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    if-nez v1, :cond_b

    if-eqz v7, :cond_8

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "upload_blobs"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "processed_in_blob"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "event_history"

    sget-object v3, Lcom/nextpeer/android/af$ab;->R:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    :cond_a
    sget-object v0, Lcom/nextpeer/android/af;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nextpeer/android/af;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "upload_callback"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_b
    :try_start_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/CursorJoiner$Result;

    invoke-static {}, Lcom/nextpeer/android/af$ab;->b()[I

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object v1, Lcom/nextpeer/android/af;->b:Ljava/lang/String;

    const-string v4, "event_name"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "wall_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    sub-long/2addr v4, v9

    const-wide/16 v9, 0x3a98

    cmp-long v1, v4, v9

    if-ltz v1, :cond_7

    :cond_c
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v7

    :goto_5
    if-eqz v1, :cond_d

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-string v5, "upload_blobs_key_ref"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "events_key_ref"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "upload_blob_events"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_5

    :catchall_3
    move-exception v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    invoke-static {v0}, Lcom/nextpeer/android/af$ab;->a(Lcom/nextpeer/android/ad;)Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "event_history"

    sget-object v2, Lcom/nextpeer/android/af$ab;->G:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->H:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v5, Lcom/nextpeer/android/af$ab;->I:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "session_key_ref"

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "processed_in_blob"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "event_history"

    invoke-virtual {v1, v2, v0}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-direct {p0}, Lcom/nextpeer/android/af$ab;->a()V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "identifiers"

    sget-object v2, Lcom/nextpeer/android/af$ab;->J:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->K:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "identifiers"

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "key"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "key"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v3, "identifiers"

    sget-object v4, Lcom/nextpeer/android/af$ab;->K:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz p2, :cond_0

    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v3, "identifiers"

    invoke-virtual {v2, v3, v0}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    invoke-static {v0}, Lcom/nextpeer/android/af$ab;->a(Lcom/nextpeer/android/ad;)Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "session_key_ref"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "event_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "real_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "wall_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_4

    const-string v0, "clv_increase"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    invoke-static {}, Lcom/nextpeer/android/af;->c()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "event_lat"

    invoke-static {}, Lcom/nextpeer/android/af;->c()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "event_lng"

    invoke-static {}, Lcom/nextpeer/android/af;->c()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2
    sget-object v0, Lcom/nextpeer/android/af;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "sessions"

    sget-object v2, Lcom/nextpeer/android/af$ab;->E:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->F:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "wall_time"

    const-string v2, "session_start_wall_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "events"

    invoke-virtual {v0, v1, v8}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v0, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Inserting event failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "clv_increase"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "During tag of open event, session didn\'t exist"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    if-eqz p2, :cond_8

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x1

    const-string v6, ""

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    sget-object v0, Lcom/nextpeer/android/af;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/af;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/af;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/af;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/af;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "session_key_ref"

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "processed_in_blob"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "event_history"

    invoke-virtual {v1, v2, v0}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-direct {p0}, Lcom/nextpeer/android/af$ab;->a()V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v0, v2, 0x1

    const/16 v2, 0x32

    if-gt v0, v2, :cond_c

    move v2, v0

    :cond_a
    const-string v0, "events_key_ref"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "attribute_key"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "attribute_value"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "attributes"

    invoke-virtual {v0, v1, v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v9, -0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Inserting attribute failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_b
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_2

    :cond_c
    move v2, v0

    goto/16 :goto_3
.end method

.method final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    invoke-static {v0}, Lcom/nextpeer/android/af$ab;->a(Lcom/nextpeer/android/ad;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nextpeer/android/af;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method final a(Z)V
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nextpeer/android/af$ab;->b(Lcom/nextpeer/android/ad;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    invoke-static {v0}, Lcom/nextpeer/android/af$ab;->a(Lcom/nextpeer/android/ad;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v4, v2}, Lcom/nextpeer/android/af$ab;->a(ZLjava/util/Map;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/nextpeer/android/af;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v0, v2, v2}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    invoke-virtual {p0, v2}, Lcom/nextpeer/android/af$ab;->a(Ljava/util/Map;)V

    :goto_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "opt_out"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "api_keys"

    sget-object v3, Lcom/nextpeer/android/af$ab;->j:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/nextpeer/android/af$ab;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nextpeer/android/af;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/nextpeer/android/af;->d:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v0, v2, v2}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/nextpeer/android/af;->c:Ljava/lang/String;

    goto :goto_3
.end method

.method final a(ZLjava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    invoke-static {v1}, Lcom/nextpeer/android/af$ab;->a(Lcom/nextpeer/android/ad;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nextpeer/android/af$ab;->b(Lcom/nextpeer/android/ad;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "events"

    sget-object v3, Lcom/nextpeer/android/af$ab;->n:[Ljava/lang/String;

    sget-object v4, Lcom/nextpeer/android/af$ab;->o:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v11, Lcom/nextpeer/android/af;->b:Ljava/lang/String;

    aput-object v11, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3a98

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    sget-object v6, Lcom/nextpeer/android/af$ab;->c:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "upload_blob_events"

    sget-object v3, Lcom/nextpeer/android/af$ab;->p:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/nextpeer/android/af$ab;->b:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-result-object v2

    :try_start_2
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    new-instance v1, Landroid/database/CursorJoiner;

    sget-object v3, Lcom/nextpeer/android/af$ab;->n:[Ljava/lang/String;

    sget-object v4, Lcom/nextpeer/android/af$ab;->p:[Ljava/lang/String;

    invoke-direct {v1, v8, v3, v2, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v6, v9

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    move-result v1

    if-nez v1, :cond_4

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v7, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "events"

    sget-object v3, Lcom/nextpeer/android/af$ab;->A:[Ljava/lang/String;

    sget-object v4, Lcom/nextpeer/android/af$ab;->B:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-result-object v2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v3, "attributes"

    sget-object v4, Lcom/nextpeer/android/af$ab;->C:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v3, "events"

    sget-object v4, Lcom/nextpeer/android/af$ab;->B:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    :try_start_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/CursorJoiner$Result;

    invoke-static {}, Lcom/nextpeer/android/af$ab;->b()[I

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-wide/16 v3, -0x1

    cmp-long v1, v3, v6

    if-eqz v1, :cond_16

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v3, v6

    if-lez v1, :cond_16

    :goto_3
    const-wide/16 v6, -0x1

    cmp-long v1, v6, v3

    if-nez v1, :cond_15

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    move-result-wide v6

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    :goto_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    :cond_7
    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0, v1}, Lcom/nextpeer/android/af$ab;->b(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_5
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    :cond_9
    const/4 v7, 0x0

    :try_start_7
    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "sessions"

    sget-object v3, Lcom/nextpeer/android/af$ab;->q:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result-object v9

    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "session_start_wall_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-wide v3

    const-wide/16 v5, 0x3a98

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_a

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    :try_start_9
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "events"

    sget-object v3, Lcom/nextpeer/android/af$ab;->u:[Ljava/lang/String;

    sget-object v4, Lcom/nextpeer/android/af$ab;->t:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-result-object v8

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v7, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "event_history"

    sget-object v3, Lcom/nextpeer/android/af$ab;->v:[Ljava/lang/String;

    sget-object v4, Lcom/nextpeer/android/af$ab;->s:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-result-object v2

    :goto_6
    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v1

    if-nez v1, :cond_10

    if-eqz v2, :cond_b

    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "event_history"

    sget-object v3, Lcom/nextpeer/android/af$ab;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "sessions"

    sget-object v3, Lcom/nextpeer/android/af$ab;->x:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_c
    if-eqz v8, :cond_d

    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_d
    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    if-nez p1, :cond_f

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    invoke-static {v1}, Lcom/nextpeer/android/af$ab;->b(Lcom/nextpeer/android/ad;)J

    move-result-wide v1

    const-wide/16 v3, 0xa

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    :cond_f
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/nextpeer/android/af$ab;->b(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_10
    :try_start_f
    const-string v1, "processed_in_blob"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    :goto_8
    if-eqz v2, :cond_11

    :try_start_10
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v1

    move-object v2, v8

    :goto_9
    if-eqz v2, :cond_12

    :try_start_11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_4
    move-exception v1

    move-object v2, v9

    :goto_a
    if-eqz v2, :cond_13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v1

    :cond_14
    :try_start_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v6, "upload_blobs"

    sget-object v7, Lcom/nextpeer/android/af$ab;->w:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-virtual {v1, v6, v7, v10}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_7

    :catchall_5
    move-exception v1

    move-object v2, v7

    goto :goto_a

    :catchall_6
    move-exception v1

    move-object v2, v7

    goto :goto_9

    :catchall_7
    move-exception v1

    move-object v2, v7

    goto :goto_8

    :catchall_8
    move-exception v1

    move-object v2, v7

    goto/16 :goto_5

    :catchall_9
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    goto/16 :goto_4

    :catchall_a
    move-exception v1

    move-object v3, v8

    goto/16 :goto_4

    :cond_15
    move-wide v6, v3

    goto/16 :goto_1

    :cond_16
    move-wide v3, v6

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method final b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "registration_id"

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "registration_version"

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/nextpeer/android/ac;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v2, "info"

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fell through switch statement"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nextpeer/android/ad;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nextpeer/android/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v1, "api_keys"

    sget-object v2, Lcom/nextpeer/android/af$ab;->h:[Ljava/lang/String;

    sget-object v3, Lcom/nextpeer/android/af$ab;->i:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nextpeer/android/af$ab;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    sget-object v0, Lcom/nextpeer/android/af;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nextpeer/android/af;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/nextpeer/android/af$ad;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    iget-object v4, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/nextpeer/android/af$ab;->a(Lcom/nextpeer/android/ad;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/nextpeer/android/af;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/af$ad;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nextpeer/android/af$ab;->g:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    :try_start_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "api_key"

    iget-object v3, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "opt_out"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "created_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    const-string v3, "api_keys"

    invoke-virtual {v2, v3, v0}, Lcom/nextpeer/android/ad;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nextpeer/android/af$ab;->f:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v2, Lcom/nextpeer/android/ag;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/ag;-><init>(Lcom/nextpeer/android/af$ab;Z)V

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v1, Lcom/nextpeer/android/ah;

    invoke-direct {v1, p0, p1}, Lcom/nextpeer/android/ah;-><init>(Lcom/nextpeer/android/af$ab;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v1, Lcom/nextpeer/android/ai;

    invoke-direct {v1, p0, p1}, Lcom/nextpeer/android/ai;-><init>(Lcom/nextpeer/android/af$ab;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nextpeer/android/af$ac;

    iget-object v1, v0, Lcom/nextpeer/android/af$ac;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/nextpeer/android/af$ac;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v0, v0, Lcom/nextpeer/android/af$ac;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v4, Lcom/nextpeer/android/aj;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/nextpeer/android/aj;-><init>(Lcom/nextpeer/android/af$ab;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    invoke-virtual {v3, v4}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v2, Lcom/nextpeer/android/ak;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/ak;-><init>(Lcom/nextpeer/android/af$ab;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nextpeer/android/af$aa;

    iget-object v1, v0, Lcom/nextpeer/android/af$aa;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/nextpeer/android/af$aa;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v3, Lcom/nextpeer/android/al;

    invoke-direct {v3, p0, v1, v0}, Lcom/nextpeer/android/al;-><init>(Lcom/nextpeer/android/af$ab;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v2, Lcom/nextpeer/android/am;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/am;-><init>(Lcom/nextpeer/android/af$ab;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v2, Lcom/nextpeer/android/an;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/an;-><init>(Lcom/nextpeer/android/af$ab;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    new-instance v2, Lcom/nextpeer/android/ao;

    invoke-direct {v2, p0, v0}, Lcom/nextpeer/android/ao;-><init>(Lcom/nextpeer/android/af$ab;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/ad;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/nextpeer/android/af;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/nextpeer/android/af$ab;->e:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
