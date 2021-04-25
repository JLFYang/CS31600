package HW1;

/*
Course: CS 31600
Name: Jacob Yang
Email: yangjl@pnw.edu
Assignment: 1
*/

/**
   The prettyPrint() method takes a BTree and
   converts it into a well formated string.
*/
public class PrettyPrinter2
{
   public static String prettyPrint(BTree tree)
   {
      return prettyPrint(tree, "");
   }


   /**
      This prettyPrint() method is essentially
      a pre-order traversal of the tree.
   */
   private static String prettyPrint(BTree tree, String indentation)
   {
      String result = "";
      if (tree == null)  // empty tree (stops the recursion)
      {
         result += "()";
      }
      else if (tree.depth() == 0)  // depth==0 stops the recursion also
      {
         result += tree.getElement();
      }
      else
      {
    	  result += "(" + tree.getElement();
          result += " " + prettyPrint( tree.getLeftTree(),  indentation+"   " ) + "\n";
          result += indentation + "   " + prettyPrint( tree.getRightTree(), indentation+"   " ) + "\n";
          result += indentation + ")";
      }
      return result;
   }
}

