.class final Lcom/nextpeer/android/ek;
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
.field final synthetic a:Lcom/nextpeer/android/eh;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eh;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ek;->a:Lcom/nextpeer/android/eh;

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

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    const-string v1, "NPA_CURRENT_MATCHES_TAPPED_ACTIVE_MATCH"

    invoke-static {v1}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn;

    iget-object v1, p0, Lcom/nextpeer/android/ek;->a:Lcom/nextpeer/android/eh;

    invoke-static {v1}, Lcom/nextpeer/android/eh;->c(Lcom/nextpeer/android/eh;)Lcom/nextpeer/android/eh$ab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ek;->a:Lcom/nextpeer/android/eh;

    invoke-static {v1}, Lcom/nextpeer/android/eh;->c(Lcom/nextpeer/android/eh;)Lcom/nextpeer/android/eh$ab;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nextpeer/android/eh$ab;->c(Lcom/nextpeer/android/dn;)V

    :cond_0
    return-void
.end method
