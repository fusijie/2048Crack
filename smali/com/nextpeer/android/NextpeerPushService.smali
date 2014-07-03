.class public final Lcom/nextpeer/android/NextpeerPushService;
.super Landroid/app/Service;

# interfaces
.implements La/a/a/a/a/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/NextpeerPushService$Action;,
        Lcom/nextpeer/android/NextpeerPushService$PushServiceConnectivityException;,
        Lcom/nextpeer/android/NextpeerPushService$QualityOfService;,
        Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;,
        Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:[B

.field private static synthetic p:[I


# instance fields
.field private volatile c:Z

.field private d:Landroid/os/Handler;

.field private e:La/a/a/a/a/ah;

.field private f:La/a/a/a/a/ao;

.field private g:La/a/a/a/a/ag;

.field private h:Landroid/app/AlarmManager;

.field private i:Landroid/net/ConnectivityManager;

.field private j:Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;

.field private k:Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Integer;

.field private n:Lcom/nextpeer/android/bn;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Lcom/nextpeer/android/NextpeerPushService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/nextpeer/android/NextpeerPushService;->a:Z

    new-array v0, v1, [B

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService;->b:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;-><init>(Lcom/nextpeer/android/NextpeerPushService;B)V

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->j:Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;-><init>(Lcom/nextpeer/android/NextpeerPushService;B)V

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->k:Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;

    iput-object v2, p0, Lcom/nextpeer/android/NextpeerPushService;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/nextpeer/android/NextpeerPushService;->m:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nextpeer/android/NextpeerPushService;->o:J

    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)La/a/a/a/a/ai;
    .locals 4

    sget-boolean v0, Lcom/nextpeer/android/NextpeerPushService;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "userUuid can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/nextpeer/android/NextpeerPushService;->a:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "userUuid can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v0, La/a/a/a/a/ai;

    invoke-direct {v0}, La/a/a/a/a/ai;-><init>()V

    invoke-static {}, Lcom/nextpeer/android/hk;->g()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    new-instance v2, Lcom/nextpeer/android/bl;

    invoke-direct {v2, p0, p1}, Lcom/nextpeer/android/bl;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/a/a/ak;

    invoke-direct {v3}, Lcom/a/a/ak;-><init>()V

    invoke-virtual {v3, v2}, Lcom/a/a/ak;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, La/a/a/a/a/ai;->j()V

    invoke-virtual {v0, v2}, La/a/a/a/a/ai;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/a/a/a/a/ai;->a(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/NextpeerPushService;)Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->j:Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/hk;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(La/a/a/a/a/ai;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, La/a/a/a/a/ag;

    invoke-static {}, Lcom/nextpeer/android/as;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/NextpeerPushService;->e:La/a/a/a/a/ah;

    invoke-direct {v0, v1, p2, v2}, La/a/a/a/a/ag;-><init>(Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/ah;)V

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    invoke-virtual {v0, p0}, La/a/a/a/a/ag;->a(La/a/a/a/a/af;)V

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    invoke-virtual {v0, p1}, La/a/a/a/a/ag;->a(La/a/a/a/a/ai;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerPushService;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Push Service is connected! Client ID is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/hk;->g()I

    move-result v0

    mul-int/lit8 v4, v0, 0x64

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->d()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->h:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v7, v4

    add-long/2addr v2, v7

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push service failed to create client object! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/nextpeer/android/NextpeerPushService;La/a/a/a/a/ai;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/NextpeerPushService;->a(La/a/a/a/a/ai;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/nextpeer/android/NextpeerPushService;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "userUuid can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/nextpeer/android/NextpeerPushService;->a:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "userUuid can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->e()V

    :cond_1
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->g()V

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->g()V

    return-void
.end method

.method static synthetic c(Lcom/nextpeer/android/NextpeerPushService;)Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->k:Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nextpeer/android/NextpeerPushService$1;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/NextpeerPushService$1;-><init>(Lcom/nextpeer/android/NextpeerPushService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/nextpeer/android/NextpeerPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->KEEPALIVE:Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic d(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->k()V

    return-void
.end method

.method static synthetic e(Lcom/nextpeer/android/NextpeerPushService;)La/a/a/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    return-object v0
.end method

.method private e()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->d()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerPushService;->h:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic f(Lcom/nextpeer/android/NextpeerPushService;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->l()Lcom/nextpeer/android/hc$aa;

    move-result-object v1

    sget-object v2, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized f()Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->i()La/a/a/a/a/aj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Push Service - Failed to send keepalive message! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/nextpeer/android/NextpeerPushService$2;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/NextpeerPushService$2;-><init>(Lcom/nextpeer/android/NextpeerPushService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->j:Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->j:Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;->register()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/nextpeer/android/NextpeerPushService;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->m:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hk;->e()I

    move-result v0

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->m:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method private declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nextpeer/android/NextpeerPushService;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    invoke-virtual {v0}, La/a/a/a/a/ag;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()La/a/a/a/a/aj;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->h()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$PushServiceConnectivityException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/NextpeerPushService$PushServiceConnectivityException;-><init>(Lcom/nextpeer/android/NextpeerPushService;B)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->f:La/a/a/a/a/ao;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    const-string v1, "keepalive"

    invoke-virtual {v0, v1}, La/a/a/a/a/ag;->a(Ljava/lang/String;)La/a/a/a/a/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->f:La/a/a/a/a/ao;

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->f:La/a/a/a/a/ao;

    if-nez v0, :cond_2

    const-string v0, "Push Service - Failed to get topic for keepalive message!"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    new-instance v0, La/a/a/a/a/ak;

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService;->b:[B

    invoke-direct {v0, v1}, La/a/a/a/a/ak;-><init>([B)V

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->Level0:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/a/a/a/ak;->a(I)V

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerPushService;->f:La/a/a/a/a/ao;

    invoke-virtual {v1, v0}, La/a/a/a/a/ao;->a(La/a/a/a/a/ak;)La/a/a/a/a/aj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->k:Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->k:Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;->register()V

    :cond_0
    return-void
.end method

.method private declared-synchronized j()Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->d()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x2000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/nextpeer/android/NextpeerPushService;)Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized k()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->g:La/a/a/a/a/ag;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerPushService;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nextpeer/android/NextpeerPushService;->o:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/nextpeer/android/NextpeerPushService;->o:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->f()Z

    iput-wide v0, p0, Lcom/nextpeer/android/NextpeerPushService;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic m()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/NextpeerPushService;->p:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/NextpeerPushService$Action;->values()[Lcom/nextpeer/android/NextpeerPushService$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->KEEPALIVE:Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->RECONNECT:Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->START:Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->STOP:Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->UNKNOWN:Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/nextpeer/android/NextpeerPushService;->p:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Could not start the NextpeerPushService - Nextpeer requires internet connection. Your AndroidManifest.xml file should include \'android.permission.INTERNET\' permission"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nextpeer/android/NextpeerPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->START:Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nextpeer/android/NextpeerPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->STOP:Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-virtual {v1}, Lcom/nextpeer/android/NextpeerPushService$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final connectionLost(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[NextpeerPushService] Connection to server has been lost - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->k()V

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->g()V

    return-void
.end method

.method public final deliveryComplete(La/a/a/a/a/ac;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized messageArrived(Ljava/lang/String;La/a/a/a/a/ak;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/nextpeer/android/hk;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerPushService;->n:Lcom/nextpeer/android/bn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerPushService;->n:Lcom/nextpeer/android/bn;

    invoke-virtual {v1}, Lcom/nextpeer/android/bn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/nextpeer/android/bn;

    invoke-direct {v1, v0}, Lcom/nextpeer/android/bn;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nextpeer/android/NextpeerPushService;->n:Lcom/nextpeer/android/bn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->n:Lcom/nextpeer/android/bn;

    invoke-virtual {p2}, La/a/a/a/a/ak;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/bn;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bp;->a(Ljava/lang/String;)Lcom/nextpeer/android/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/bp;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/bp;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t decode message! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You cannot bind directly to the NextpeerPushService."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NextpeerPushService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nextpeer/android/NextpeerPushService;->d:Landroid/os/Handler;

    :try_start_0
    new-instance v0, La/a/a/a/a/c/ab;

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerPushService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/a/c/ab;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->e:La/a/a/a/a/ah;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->h:Landroid/app/AlarmManager;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NextpeerPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->i:Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/NextpeerPushService;->c:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create push service DataStore - with exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    new-instance v0, La/a/a/a/a/c/aa;

    invoke-direct {v0}, La/a/a/a/a/c/aa;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/NextpeerPushService;->e:La/a/a/a/a/ah;

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->c()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService$Action;->getByName(Ljava/lang/String;)Lcom/nextpeer/android/NextpeerPushService$Action;

    move-result-object v0

    invoke-static {}, Lcom/nextpeer/android/NextpeerPushService;->m()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerPushService$Action;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Starting PushService with no action\n Probably from a crash"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x3

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->b()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->c()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->c()V

    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->g()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/nextpeer/android/NextpeerPushService;->g()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
