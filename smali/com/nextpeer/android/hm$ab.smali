.class final Lcom/nextpeer/android/hm$ab;
.super Lcom/nextpeer/android/hn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ab"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/hm;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/hm;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-direct {p0}, Lcom/nextpeer/android/hn;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/hm;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/hm$ab;-><init>(Lcom/nextpeer/android/hm;)V

    return-void
.end method


# virtual methods
.method public final onFetchUserProfileFailed()V
    .locals 2

    const-string v0, "NPUserProfileFetcher - failed fetching profile."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/hm$aa;->h_()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->b(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$ab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->c(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hh;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v1}, Lcom/nextpeer/android/hm;->b(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hn;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->d(Lcom/nextpeer/android/hm;)V

    :cond_1
    return-void
.end method

.method public final onFetchUserProfileSuccessfully(Lcom/nextpeer/android/hl;)V
    .locals 2

    const-string v0, "NPUserProfileFetcher - success fetching profile."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/hm$aa;->g_()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->b(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$ab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->c(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hh;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v1}, Lcom/nextpeer/android/hm;->b(Lcom/nextpeer/android/hm;)Lcom/nextpeer/android/hm$ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hn;)V

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-static {v0}, Lcom/nextpeer/android/hm;->d(Lcom/nextpeer/android/hm;)V

    :cond_1
    return-void
.end method

.method public final onShouldReauthenticate()V
    .locals 1

    const-string v0, "success fetching profile, reauthenticating..."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->m()V

    iget-object v0, p0, Lcom/nextpeer/android/hm$ab;->a:Lcom/nextpeer/android/hm;

    invoke-virtual {v0}, Lcom/nextpeer/android/hm;->a()V

    return-void
.end method
