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
public class PrettyPrinter1
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
         result += indentation+"()";
      }
      else if (tree.depth() == 0)  // depth==0 stops the recursion also
      {
         result += indentation + " " + tree.getElement() ;
      }
      else if (tree.depth() == 1) // depth==1, children is present with no children of their own
      {
    	  result += indentation+"(" + tree.getElement();
    	  result += " " + prettyPrint( tree.getLeftTree() );
          result += " " + prettyPrint( tree.getRightTree() );
          result += ")";
      }
      else //depth greater than 1
      {
    	  	result += indentation+"(" + tree.getElement() + "\n";
    		result += prettyPrint( tree.getLeftTree(),  indentation+"  " ) + "\n";
    		result += prettyPrint( tree.getRightTree(), indentation+"  " ) + "\n";
    		result += indentation + ")";  
      }
      return result;
   }
}



