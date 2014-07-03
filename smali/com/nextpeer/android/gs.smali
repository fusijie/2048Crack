.class final Lcom/nextpeer/android/gs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gr;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gr;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gs;->a:Lcom/nextpeer/android/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "NPA_TOURNAMENT_SELECTION_TAPPED_ITEM"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gs;->a:Lcom/nextpeer/android/gr;

    invoke-static {v0}, Lcom/nextpeer/android/gr;->a(Lcom/nextpeer/android/gr;)Lcom/nextpeer/android/gr$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gs;->a:Lcom/nextpeer/android/gr;

    invoke-static {v0}, Lcom/nextpeer/android/gr;->b(Lcom/nextpeer/android/gr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dm;

    iget-object v1, p0, Lcom/nextpeer/android/gs;->a:Lcom/nextpeer/android/gr;

    invoke-static {v1}, Lcom/nextpeer/android/gr;->a(Lcom/nextpeer/android/gr;)Lcom/nextpeer/android/gr$aa;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nextpeer/android/gr$aa;->a(Lcom/nextpeer/android/dm;)V

    :cond_0
    return-void
.end method
