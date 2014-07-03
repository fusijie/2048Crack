.class final Lcom/nextpeer/android/hm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/hc$ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/hm$aa;,
        Lcom/nextpeer/android/hm$ab;
    }
.end annotation


# instance fields
.field private final a:Lcom/nextpeer/android/hc;

.field private final b:Lcom/nextpeer/android/hh;

.field private c:Lcom/nextpeer/android/hm$ab;

.field private d:Lcom/nextpeer/android/hm$aa;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hm;->d:Lcom/nextpeer/android/hm$aa;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hm;->e:Z

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hm;->b:Lcom/nextpeer/android/hh;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hm;->d:Lcom/nextpeer/android/hm$aa;

    return-object v0
.end method

.method static synthetic b(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    return-object v0
.end method

.method static synthetic c(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hh;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hm;->b:Lcom/nextpeer/android/hh;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hm;->b:Lcom/nextpeer/android/hh;

    iget-object v1, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hn;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    :cond_0
    new-instance v0, Lcom/nextpeer/android/hm$ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/hm$ab;-><init>(Lcom/nextpeer/android/hm;B)V

    iput-object v0, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    iget-object v0, p0, Lcom/nextpeer/android/hm;->b:Lcom/nextpeer/android/hh;

    iget-object v1, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->a(Lcom/nextpeer/android/hn;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm;->b:Lcom/nextpeer/android/hh;

    iget-boolean v1, p0, Lcom/nextpeer/android/hm;->e:Z

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/hm;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hm;->e:Z

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc$ab;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/hm;->c()V

    goto :goto_0
.end method

.method public final a(Lcom/nextpeer/android/hm$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/hm;->d:Lcom/nextpeer/android/hm$aa;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/hm;->e:Z

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc$ab;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/hc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->b(Lcom/nextpeer/android/hc$ab;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->f()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/hm;->b:Lcom/nextpeer/android/hh;

    iget-object v1, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hn;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hm;->c:Lcom/nextpeer/android/hm$ab;

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/hm;->b:Lcom/nextpeer/android/hh;

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/hm;->b:Lcom/nextpeer/android/hh;

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->e()V

    :cond_2
    return-void
.end method

.method public final onRegisterUserFailed()V
    .locals 1

    const-string v0, "NPUserProfileFetcher - failed registering."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm;->d:Lcom/nextpeer/android/hm$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hm;->d:Lcom/nextpeer/android/hm$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/hm$aa;->h_()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->b(Lcom/nextpeer/android/hc$ab;)V

    return-void
.end method

.method public final onRegisterUserSuccessfully(Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "NPUserProfileFetcher - success registering."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/hm;->c()V

    iget-object v0, p0, Lcom/nextpeer/android/hm;->a:Lcom/nextpeer/android/hc;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->b(Lcom/nextpeer/android/hc$ab;)V

    return-void
.end method
