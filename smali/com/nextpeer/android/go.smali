.class final Lcom/nextpeer/android/go;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gm;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/go;->a:Lcom/nextpeer/android/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/go;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->c(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/go;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->c(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/gm$aa;->q()V

    const-string v0, "NPA_TOURNAMENT_RESULTS_RANDOM_PLAY_AGAIN"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
