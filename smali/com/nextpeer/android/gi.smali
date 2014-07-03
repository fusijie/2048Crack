.class final Lcom/nextpeer/android/gi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gg;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gg;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gi;->a:Lcom/nextpeer/android/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/gi;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->m(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "NPA_TOURNAMENT_RESULTS_FRIENDS_PLAY_AGAIN"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gi;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->m(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$aa;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gi;->a:Lcom/nextpeer/android/gg;

    invoke-static {v1}, Lcom/nextpeer/android/gg;->n(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/dn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nextpeer/android/gg$aa;->a(Lcom/nextpeer/android/dn;)V

    :cond_0
    return-void
.end method
