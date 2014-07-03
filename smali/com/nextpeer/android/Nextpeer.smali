.class public final Lcom/nextpeer/android/Nextpeer;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nextpeer/android/Nextpeer;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/nextpeer/android/NextpeerSettings;

.field private d:Z

.field private e:Z

.field private final f:Lcom/nextpeer/android/NextpeerListener;

.field private final g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Bundle;

.field private k:Landroid/os/Handler;

.field private final l:Lcom/nextpeer/android/dx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/NextpeerListener;Lcom/nextpeer/android/NextpeerSettings;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/nextpeer/android/Nextpeer;->c:Lcom/nextpeer/android/NextpeerSettings;

    iput-boolean v0, p0, Lcom/nextpeer/android/Nextpeer;->d:Z

    iput-boolean v0, p0, Lcom/nextpeer/android/Nextpeer;->e:Z

    iput-boolean v0, p0, Lcom/nextpeer/android/Nextpeer;->h:Z

    iput-boolean v0, p0, Lcom/nextpeer/android/Nextpeer;->i:Z

    iput-object v1, p0, Lcom/nextpeer/android/Nextpeer;->j:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/nextpeer/android/Nextpeer;->k:Landroid/os/Handler;

    new-instance v0, Lcom/nextpeer/android/Nextpeer$1;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/Nextpeer$1;-><init>(Lcom/nextpeer/android/Nextpeer;)V

    iput-object v0, p0, Lcom/nextpeer/android/Nextpeer;->l:Lcom/nextpeer/android/dx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/nextpeer/android/as;->e:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    if-nez p4, :cond_1

    new-instance p4, Lcom/nextpeer/android/NextpeerSettings;

    invoke-direct {p4}, Lcom/nextpeer/android/NextpeerSettings;-><init>()V

    :cond_1
    iput-object p4, p0, Lcom/nextpeer/android/Nextpeer;->c:Lcom/nextpeer/android/NextpeerSettings;

    iput-object p2, p0, Lcom/nextpeer/android/Nextpeer;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/Nextpeer;->f:Lcom/nextpeer/android/NextpeerListener;

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nextpeer/android/Nextpeer;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nextpeer/android/au;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "Nextpeer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using Nextpeer version 1.3.12. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/as;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static a()Lcom/nextpeer/android/Nextpeer;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/dp;)Lcom/nextpeer/android/NextpeerTournamentPlayer;
    .locals 5

    new-instance v0, Lcom/nextpeer/android/NextpeerTournamentPlayer;

    invoke-virtual {p0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/nextpeer/android/dp;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nextpeer/android/NextpeerTournamentPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/Nextpeer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nextpeer/android/Nextpeer;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/Nextpeer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/Nextpeer;->d:Z

    return v0
.end method

.method private static final a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userId cannot be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nextpeer/android/Nextpeer;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic b(Lcom/nextpeer/android/Nextpeer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nextpeer/android/Nextpeer;->e:Z

    return-void
.end method

.method public static final changeCurrentPlayerAvatarUrl(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer onStart wasn\'t called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, v1, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/hk;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/hl;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final changeCurrentPlayerName(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer onStart wasn\'t called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, v1, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/hk;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/hl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final enableRankingDisplay(Z)V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/bx;->a()Lcom/nextpeer/android/bx;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer onStart wasn\'t called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/nextpeer/android/bx;->a(Z)V

    return-void
.end method

.method public static final getCurrentPlayerDetails()Lcom/nextpeer/android/NextpeerTournamentPlayer;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/nextpeer/android/NextpeerTournamentPlayer;

    iget-object v2, v1, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v2, v2, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v3}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ab;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/nextpeer/android/NextpeerTournamentPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static final getNextpeerSettings()Lcom/nextpeer/android/NextpeerSettings;
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iget-object v0, v0, Lcom/nextpeer/android/Nextpeer;->c:Lcom/nextpeer/android/NextpeerSettings;

    return-object v0
.end method

.method public static final getNextpeerVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.12"

    return-object v0
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/NextpeerListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/nextpeer/android/Nextpeer;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/NextpeerListener;Lcom/nextpeer/android/NextpeerSettings;)V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/NextpeerListener;Lcom/nextpeer/android/NextpeerSettings;)V
    .locals 3

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    if-eqz v0, :cond_0

    const-string v0, "Nextpeer"

    const-string v1, "Warning: Nextpeer already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gameKey cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Nextpeer"

    const-string v1, "Nextpeer requires internet connection. Your AndroidManifest.xml file should include \'android.permission.INTERNET\' permission"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Lcom/nextpeer/android/Nextpeer;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nextpeer/android/Nextpeer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/NextpeerListener;Lcom/nextpeer/android/NextpeerSettings;)V

    sput-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    goto :goto_0
.end method

.method public static final isCurrentlyInTournament()Z
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->j()Z

    move-result v0

    goto :goto_0
.end method

.method public static final isNextpeerInitialized()Z
    .locals 1

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isNextpeerSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k()Lcom/nextpeer/android/Nextpeer;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    return-object v0
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/Nextpeer;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->startService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static final launch()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iget-boolean v0, v0, Lcom/nextpeer/android/Nextpeer;->h:Z

    if-nez v0, :cond_2

    sget-object v1, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iget-boolean v0, v0, Lcom/nextpeer/android/Nextpeer;->h:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/nextpeer/android/Nextpeer;->h:Z

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-direct {v0}, Lcom/nextpeer/android/Nextpeer;->m()V

    const-string v0, "Nextpeer"

    const-string v2, "Warning: You should place a call to Nextpeer.onStart in your Activity.onStart method"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/nextpeer/android/dr;->a(Z)V

    :cond_3
    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nextpeer/android/Nextpeer;->j:Landroid/os/Bundle;

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iget-object v0, v0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerActivity;->a(Landroid/content/Context;)V

    const-string v0, "NPA_NEXTPEER_LAUNCHED_DASHBOARD"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private m()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/nextpeer/android/bk;->a()V

    iput-boolean v0, p0, Lcom/nextpeer/android/Nextpeer;->i:Z

    invoke-static {}, Lcom/nextpeer/android/ay;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/nextpeer/android/NextpeerPushService;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    :goto_0
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/nextpeer/android/facebook/LoginActivity;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_1
    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/nextpeer/android/Nextpeer;->i:Z

    :goto_2
    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/aa;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/nextpeer/android/hc;->b()V

    invoke-static {}, Lcom/nextpeer/android/hh;->b()V

    invoke-static {}, Lcom/nextpeer/android/dr;->a()V

    invoke-static {}, Lcom/nextpeer/android/av;->a()V

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->l()Lcom/nextpeer/android/hc$aa;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/Nextpeer;->l()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nextpeer/android/bx;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/nextpeer/android/bi;->a()V

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/Nextpeer;->l:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dx;)V

    invoke-static {}, Lcom/nextpeer/android/as;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nextpeer/android/aa;->a()V

    :cond_1
    const-string v1, "NPA_NEXTPEER_INIT"

    invoke-static {v1}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v0, "NPA_NEXTPEER_FIRST_TIME_INIT"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const-string v0, "Nextpeer"

    const-string v1, "Facebook\'s LoginActivity is not declared as an activity in AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v0, "Nextpeer"

    const-string v1, "NextpeerPushService is not declared as an service in AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v0, "Could not find Facebook application on device. Nextpeer supports FB SSO only"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static final onStart()V
    .locals 4

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iget-boolean v0, v0, Lcom/nextpeer/android/Nextpeer;->h:Z

    if-nez v0, :cond_2

    sget-object v1, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iget-boolean v0, v0, Lcom/nextpeer/android/Nextpeer;->h:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/nextpeer/android/Nextpeer;->h:Z

    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-direct {v0}, Lcom/nextpeer/android/Nextpeer;->m()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    sget-object v1, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iget-object v1, v1, Lcom/nextpeer/android/Nextpeer;->j:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/nextpeer/android/Nextpeer;->k:Landroid/os/Handler;

    if-nez v1, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/nextpeer/android/Nextpeer;->k:Landroid/os/Handler;

    :cond_3
    new-instance v1, Lcom/nextpeer/android/Nextpeer$2;

    invoke-direct {v1, v0}, Lcom/nextpeer/android/Nextpeer$2;-><init>(Lcom/nextpeer/android/Nextpeer;)V

    iget-object v0, v0, Lcom/nextpeer/android/Nextpeer;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final pushDataToOtherPlayers([B)V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Nextpeer"

    const-string v1, "ERROR: [Nextpeer pushDataToOtherPlayers] data must have content"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0, p0}, Lcom/nextpeer/android/dr;->a([B)V

    goto :goto_0
.end method

.method public static final reportControlledTournamentOverWithScore(I)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p0, :cond_1

    const-string v0, "Nextpeer"

    const-string v1, "ERROR: [Nextpeer reportControlledTournamentOverWithScore] score must be a positive number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "score cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nextpeer/android/Nextpeer;->d:Z

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/dr;->b(I)Z

    goto :goto_0
.end method

.method public static final reportForfeitForCurrentTournament()V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iget-boolean v1, v1, Lcom/nextpeer/android/Nextpeer;->e:Z

    if-eqz v1, :cond_3

    const-string v0, "Tournament reported already on end, cannot forfeit ended tournament"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nextpeer/android/bx;->a()Lcom/nextpeer/android/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/bx;->b()V

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nextpeer/android/Nextpeer;->d:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    goto :goto_0
.end method

.method public static final reportScoreForCurrentTournament(I)V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p0, :cond_1

    const-string v0, "Nextpeer"

    const-string v1, "ERROR: [Nextpeer reportScoreForCurrentTournament] score must be a positive number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "score cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p0}, Lcom/nextpeer/android/dr;->a(I)V

    goto :goto_0
.end method

.method public static final requestRecordingControlFastForwardRecording(Ljava/lang/String;I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeDelta cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/nextpeer/android/dr;->c(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static final requestRecordingControlPauseRecording(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/dr;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final requestRecordingControlResumeRecording(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/dr;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final requestRecordingControlRewindRecording(Ljava/lang/String;I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeDelta cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/nextpeer/android/dr;->b(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static final requestRecordingControlScoreModifier(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/nextpeer/android/dr;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static final requestRecordingControlStopRecording(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/Nextpeer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/dr;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final setNextpeerSettings(Lcom/nextpeer/android/NextpeerSettings;)V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/nextpeer/android/Nextpeer;->a:Lcom/nextpeer/android/Nextpeer;

    iput-object p0, v0, Lcom/nextpeer/android/Nextpeer;->c:Lcom/nextpeer/android/NextpeerSettings;

    return-void
.end method

.method public static final timeLeftForTournament()I
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->h()I

    move-result v0

    goto :goto_0
.end method

.method public static final unreliablePushDataToOtherPlayers([B)V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->isNextpeerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nextpeer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Nextpeer"

    const-string v1, "ERROR: [Nextpeer unreliablePushDataToOtherPlayers] data must have content"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0, p0}, Lcom/nextpeer/android/dr;->b([B)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/Nextpeer;->j:Landroid/os/Bundle;

    return-void
.end method

.method protected final a(Lcom/nextpeer/android/hc$aa;)V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/Nextpeer;->l()V

    :cond_0
    return-void
.end method

.method protected final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected final c()Lcom/nextpeer/android/NextpeerListener;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->f:Lcom/nextpeer/android/NextpeerListener;

    return-object v0
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->f:Lcom/nextpeer/android/NextpeerListener;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerListener;->onNextpeerAppear()V

    return-void
.end method

.method protected final e()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->f:Lcom/nextpeer/android/NextpeerListener;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerListener;->onNextpeerDisappear()V

    return-void
.end method

.method protected final f()V
    .locals 2

    const-string v0, "NPA_NEXTPEER_SESSION_ENDED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/aa;->a()V

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->f:Lcom/nextpeer/android/NextpeerListener;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerListener;->onNextpeerReturnToGame()V

    return-void
.end method

.method protected final g()Lcom/nextpeer/android/NextpeerSettings;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->c:Lcom/nextpeer/android/NextpeerSettings;

    return-object v0
.end method

.method protected final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/Nextpeer;->i:Z

    return v0
.end method

.method protected final i()V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Could not destroy the local credentials - the credentails instanse is not available"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/nextpeer/android/av;->b()Lcom/nextpeer/android/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/av;->e()V

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->m()V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hl;->b()V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->stopService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected final j()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/Nextpeer;->j:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nextpeer/android/Nextpeer;->j:Landroid/os/Bundle;

    return-object v0
.end method
