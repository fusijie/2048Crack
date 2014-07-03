.class final Lcom/nextpeer/android/eg;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ef;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    iput-object p2, p0, Lcom/nextpeer/android/eg;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    iget-object v1, v0, Lcom/nextpeer/android/hh;->a:Lcom/nextpeer/android/hk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/hk;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/eg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hl;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    invoke-static {v0}, Lcom/nextpeer/android/ef;->a(Lcom/nextpeer/android/ef;)V

    iget-object v0, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    iget-object v1, p0, Lcom/nextpeer/android/eg;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/nextpeer/android/ef;->b(Lcom/nextpeer/android/ef;)V

    iget-object v0, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    invoke-virtual {v0}, Lcom/nextpeer/android/ef;->dismiss()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    invoke-static {v0}, Lcom/nextpeer/android/ef;->c(Lcom/nextpeer/android/ef;)V

    iget-object v0, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    invoke-static {v0}, Lcom/nextpeer/android/ef;->d(Lcom/nextpeer/android/ef;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    invoke-static {v1}, Lcom/nextpeer/android/ef;->e(Lcom/nextpeer/android/ef;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    invoke-static {v0}, Lcom/nextpeer/android/ef;->a(Lcom/nextpeer/android/ef;)V

    iget-object v0, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    invoke-static {v0}, Lcom/nextpeer/android/ef;->f(Lcom/nextpeer/android/ef;)Lcom/nextpeer/android/ef$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eg;->a:Lcom/nextpeer/android/ef;

    invoke-static {v0}, Lcom/nextpeer/android/ef;->f(Lcom/nextpeer/android/ef;)Lcom/nextpeer/android/ef$aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/ef$aa;->k()V

    :cond_0
    return-void
.end method
