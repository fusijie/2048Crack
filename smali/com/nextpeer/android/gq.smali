.class final Lcom/nextpeer/android/gq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/fu$aa;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gm;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gm;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gq;->a:Lcom/nextpeer/android/gm;

    iput-object p2, p0, Lcom/nextpeer/android/gq;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/gq;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->f(Lcom/nextpeer/android/gm;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/gq;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->g(Lcom/nextpeer/android/gm;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/nextpeer/android/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    const-string v0, "NPA_TOURNAMENT_RESULTS_RANDOM_ACTION_PLAY_WITH_FRIENDS"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gq;->a:Lcom/nextpeer/android/gm;

    invoke-virtual {v0}, Lcom/nextpeer/android/gm;->p()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/fz;

    iget-object v1, v0, Lcom/nextpeer/android/fz;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/nextpeer/android/gx$aa;

    iget-object v2, p0, Lcom/nextpeer/android/gq;->a:Lcom/nextpeer/android/gm;

    invoke-virtual {v2}, Lcom/nextpeer/android/gm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, v0, Lcom/nextpeer/android/fz;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/nextpeer/android/gx$aa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nextpeer/android/gx$aa;->a()Lcom/nextpeer/android/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->show()V

    goto :goto_0
.end method
