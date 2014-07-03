.class final Lcom/nextpeer/android/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/hm$aa;


# static fields
.field private static a:Lcom/nextpeer/android/bi;


# instance fields
.field private b:Lcom/nextpeer/android/hm;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/bi;->a:Lcom/nextpeer/android/bi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/bi;->b:Lcom/nextpeer/android/hm;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nextpeer/android/bi;->c:I

    invoke-direct {p0}, Lcom/nextpeer/android/bi;->d()V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/bi;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nextpeer/android/bi;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Lcom/a/a/ba;

    invoke-direct {v2}, Lcom/a/a/ba;-><init>()V

    invoke-static {p1}, Lcom/a/a/ba;->a(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/av;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/a/a/av;->k()Lcom/a/a/ay;

    move-result-object v2

    const-string v3, "settings"

    invoke-virtual {v2, v3}, Lcom/a/a/ay;->c(Ljava/lang/String;)Lcom/a/a/ay;

    move-result-object v2

    const-string v3, "performAutoRegister"

    invoke-virtual {v2, v3}, Lcom/a/a/ay;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "performAutoRegister"

    invoke-virtual {v2, v3}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/av;->e()I

    move-result v2

    if-ne v2, v0, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/hm;

    invoke-direct {v0}, Lcom/nextpeer/android/hm;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/bi;->b:Lcom/nextpeer/android/hm;

    iget-object v0, p0, Lcom/nextpeer/android/bi;->b:Lcom/nextpeer/android/hm;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm$aa;)V

    iget-object v0, p0, Lcom/nextpeer/android/bi;->b:Lcom/nextpeer/android/hm;

    invoke-virtual {v0}, Lcom/nextpeer/android/hm;->a()V

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "Couldn\'t parse init settings"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t parse init settings, error is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/bi;->a:Lcom/nextpeer/android/bi;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/bi;

    invoke-direct {v0}, Lcom/nextpeer/android/bi;-><init>()V

    sput-object v0, Lcom/nextpeer/android/bi;->a:Lcom/nextpeer/android/bi;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/bi;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/bi;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/nextpeer/android/bi;->c:I

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nextpeer/android/bi;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nextpeer/android/bi;->c:I

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/bj;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/bj;-><init>(Lcom/nextpeer/android/bi;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    goto :goto_0
.end method


# virtual methods
.method public final g_()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/bi;->b:Lcom/nextpeer/android/hm;

    invoke-static {}, Lcom/nextpeer/android/hk;->d()Lcom/nextpeer/android/hg;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/hg;->b:Lcom/nextpeer/android/hg;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/hg;->b:Lcom/nextpeer/android/hg;

    invoke-static {v0, v1}, Lcom/nextpeer/android/NextpeerActivity;->a(Landroid/content/Context;Lcom/nextpeer/android/hg;)V

    :cond_0
    return-void
.end method

.method public final h_()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/bi;->b:Lcom/nextpeer/android/hm;

    return-void
.end method
