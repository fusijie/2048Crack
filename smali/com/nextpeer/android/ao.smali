.class final Lcom/nextpeer/android/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/af$ab;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/af$ab;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ao;->a:Lcom/nextpeer/android/af$ab;

    iput-object p2, p0, Lcom/nextpeer/android/ao;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ao;->a:Lcom/nextpeer/android/af$ab;

    iget-object v1, p0, Lcom/nextpeer/android/ao;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/Runnable;)V

    return-void
.end method
