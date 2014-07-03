.class final Lcom/nextpeer/android/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/af$ab;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/nextpeer/android/af$ab;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ag;->a:Lcom/nextpeer/android/af$ab;

    iput-boolean p2, p0, Lcom/nextpeer/android/ag;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ag;->a:Lcom/nextpeer/android/af$ab;

    iget-boolean v1, p0, Lcom/nextpeer/android/ag;->b:Z

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/af$ab;->a(Z)V

    return-void
.end method
