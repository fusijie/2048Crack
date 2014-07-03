.class final Lcom/nextpeer/android/fh;
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
.field final synthetic a:Lcom/nextpeer/android/ex;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fh;->a:Lcom/nextpeer/android/ex;

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

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/av$ab;

    iget-object v1, p0, Lcom/nextpeer/android/fh;->a:Lcom/nextpeer/android/ex;

    invoke-static {v1, v0}, Lcom/nextpeer/android/ex;->a(Lcom/nextpeer/android/ex;Lcom/nextpeer/android/av$ab;)V

    return-void
.end method
