.class final Lcom/nextpeer/android/hh;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/nextpeer/android/hh;


# instance fields
.field public final a:Lcom/nextpeer/android/hk;

.field private volatile c:Z

.field private d:Lcom/nextpeer/android/hl;

.field private e:Lcom/nextpeer/android/hq;

.field private final f:Lcom/nextpeer/android/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nextpeer/android/ar",
            "<",
            "Lcom/nextpeer/android/hn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/hh;->b:Lcom/nextpeer/android/hh;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hh;->c:Z

    iput-object v1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iput-object v1, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    new-instance v0, Lcom/nextpeer/android/ar;

    invoke-direct {v0}, Lcom/nextpeer/android/ar;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    new-instance v0, Lcom/nextpeer/android/hk;

    invoke-direct {v0}, Lcom/nextpeer/android/hk;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    return-void
.end method

.method public static a()Lcom/nextpeer/android/hh;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/hh;->b:Lcom/nextpeer/android/hh;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/hh;)Lcom/nextpeer/android/hl;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/hh;Lcom/nextpeer/android/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/hl;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dm;

    invoke-virtual {v0}, Lcom/nextpeer/android/dm;->e()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/hh;->b:Lcom/nextpeer/android/hh;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/hh;

    invoke-direct {v0}, Lcom/nextpeer/android/hh;-><init>()V

    sput-object v0, Lcom/nextpeer/android/hh;->b:Lcom/nextpeer/android/hh;

    goto :goto_0
.end method

.method static synthetic b(Lcom/nextpeer/android/hh;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/hh;->f()V

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/hl;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->c()Lcom/nextpeer/android/NextpeerListener;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/hl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/hl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    const-string v1, "UserProfile parse failed! NextpeerListener not supporting any of the given tournaments"

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    const-string v1, "Nextpeer"

    const-string v2, "Failed to parse the user profile. NextpeerListener\'s onSupportsTournament method returned \'false\' value to all available tournaments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dm;

    invoke-virtual {v0}, Lcom/nextpeer/android/dm;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/NextpeerListener;->onSupportsTournament(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/nextpeer/android/hh;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hh;->c:Z

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/hn;

    invoke-virtual {v0}, Lcom/nextpeer/android/hn;->onFetchUserProfileFailed()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/nextpeer/android/hh;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    return-void
.end method

.method static synthetic e(Lcom/nextpeer/android/hh;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hh;->c:Z

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/hn;

    invoke-virtual {v0}, Lcom/nextpeer/android/hn;->onShouldReauthenticate()V

    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hh;->c:Z

    iget-object v0, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iget-object v0, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ad;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->a(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    iget-object v1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iget-object v1, v1, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    iget-object v1, v1, Lcom/nextpeer/android/hl$ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hk;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    iget-object v1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iget-object v1, v1, Lcom/nextpeer/android/hl;->d:Lcom/nextpeer/android/hl$aa;

    iget v1, v1, Lcom/nextpeer/android/hl$aa;->d:I

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hk;->a(I)V

    iget-object v0, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    iget-object v1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iget-object v1, v1, Lcom/nextpeer/android/hl;->d:Lcom/nextpeer/android/hl$aa;

    iget-object v1, v1, Lcom/nextpeer/android/hl$aa;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    iget-object v1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iget-object v1, v1, Lcom/nextpeer/android/hl;->d:Lcom/nextpeer/android/hl$aa;

    iget v1, v1, Lcom/nextpeer/android/hl$aa;->f:I

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hk;->b(I)V

    iget-object v0, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    iget-object v1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iget-object v1, v1, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ad;->e()Lcom/nextpeer/android/hg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hk;->b(Lcom/nextpeer/android/hg;)V

    new-instance v0, Lcom/nextpeer/android/hj;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/hj;-><init>(Lcom/nextpeer/android/hh;)V

    iget-object v1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iget-object v1, v1, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ad;->a()[Lcom/nextpeer/android/hl$ad$aa;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    iget-object v1, v1, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ad;->b()[Lcom/nextpeer/android/hl$ad$ac;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/hn;

    iget-object v2, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/hn;->onFetchUserProfileSuccessfully(Lcom/nextpeer/android/hl;)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/hn;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nextpeer/android/hh;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/hl;->c()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/nextpeer/android/hh;->f()V

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/nextpeer/android/hh;->c:Z

    iget-object v2, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v2}, Lcom/nextpeer/android/hk;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v3}, Lcom/nextpeer/android/hk;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    invoke-virtual {v4}, Lcom/nextpeer/android/hk;->b()Lcom/nextpeer/android/hg;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v1

    new-instance v5, Lcom/nextpeer/android/hi;

    invoke-direct {v5, p0, v0}, Lcom/nextpeer/android/hi;-><init>(Lcom/nextpeer/android/hh;Z)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nextpeer/android/ho;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/hg;Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final b(Lcom/nextpeer/android/hn;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hh;->f:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/hh;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Lcom/nextpeer/android/hl;
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/hh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hh;->d:Lcom/nextpeer/android/hl;

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hh;->e:Lcom/nextpeer/android/hq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hh;->c:Z

    return-void
.end method
